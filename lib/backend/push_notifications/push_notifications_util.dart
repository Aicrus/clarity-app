import 'dart:async';
import 'dart:io' show Platform;

import 'package:clarity/backend/push_notifications/push_notifications_list.dart';

import '../backend.dart';
import 'serialization_util.dart';
import '../../auth/firebase_auth/auth_util.dart';
import '../cloud_functions/cloud_functions.dart';

import 'package:flutter/foundation.dart';
import 'package:stream_transform/stream_transform.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

export 'push_notifications_handler.dart';
export 'serialization_util.dart';

const kUserPushNotificationsCollectionName = 'ff_user_push_notifications';

final permissionCompleter = Completer<void>();

class UserTokenInfo {
  const UserTokenInfo(this.userPath, this.fcmToken);
  final String userPath;
  final String fcmToken;
}

// Stream<UserTokenInfo> getFcmTokenStream(String userPath) =>
//     Stream.value(!kIsWeb && (Platform.isIOS || Platform.isAndroid))
//         .where((shouldGetToken) => shouldGetToken)
//         .asyncExpand((_) => Stream.fromFuture(permissionCompleter.future))
//         .asyncMap<String?>(
//             (_) => FirebaseMessaging.instance.requestPermission().then(
//                   (settings) => settings.authorizationStatus ==
//                           AuthorizationStatus.authorized
//                       ? FirebaseMessaging.instance.getToken()
//                       : null,
//                 ))
//         .switchMap((fcmToken) => Stream.value(fcmToken)
//             .merge(FirebaseMessaging.instance.onTokenRefresh))
//         .where((fcmToken) => fcmToken != null && fcmToken.isNotEmpty)
//         .map((token) => UserTokenInfo(userPath, token!));
Stream<UserTokenInfo> getFcmTokenStream(String userPath) =>
    Stream.value(!kIsWeb && (Platform.isIOS || Platform.isAndroid))
        .where((shouldGetToken) => shouldGetToken)
        .asyncExpand((_) {
          // Vérifie si reminderIsSet == true
          if (currentUserDocument != null &&
              currentUserDocument!.reminderIsSet == true) {
            permissionCompleter.complete();
          }
          return Stream.fromFuture(permissionCompleter.future);
        })
        .asyncMap<String?>((_) async {
          final settings = await FirebaseMessaging.instance.requestPermission();
          if (settings.authorizationStatus == AuthorizationStatus.authorized) {
            return FirebaseMessaging.instance.getToken();
          }
          return null;
        })
        .switchMap((fcmToken) => Stream.value(fcmToken)
            .merge(FirebaseMessaging.instance.onTokenRefresh))
        .where((fcmToken) => fcmToken != null && fcmToken.isNotEmpty)
        .map((token) => UserTokenInfo(userPath, token!));
final fcmTokenUserStream = authenticatedUserStream
    .where((user) => user != null)
    .map((user) => user!.reference.path)
    .distinct()
    .switchMap(getFcmTokenStream)
    .map(
      (userTokenInfo) => makeCloudCall(
        'addFcmToken',
        {
          'userDocPath': userTokenInfo.userPath,
          'fcmToken': userTokenInfo.fcmToken,
          'deviceType': Platform.isIOS ? 'iOS' : 'Android',
        },
      ),
    );

void triggerPushNotification({
  required String? notificationTitle,
  required String? notificationText,
  String? notificationImageUrl,
  DateTime? scheduledTime,
  String? notificationSound,
  required List<DocumentReference> userRefs,
  required String initialPageName,
  required Map<String, dynamic> parameterData,
}) {
  if ((notificationTitle ?? '').isEmpty || (notificationText ?? '').isEmpty) {
    return;
  }
  final serializedParameterData = serializeParameterData(parameterData);
  final pushNotificationData = {
    'notification_title': notificationTitle,
    'notification_text': notificationText,
    if (notificationImageUrl != null)
      'notification_image_url': notificationImageUrl,
    if (scheduledTime != null) 'scheduled_time': scheduledTime,
    if (notificationSound != null) 'notification_sound': notificationSound,
    'user_refs': userRefs.map((u) => u.path).join(','),
    'initial_page_name': initialPageName,
    'parameter_data': serializedParameterData,
    'sender': currentUserReference,
    'timestamp': DateTime.now(),
  };
  FirebaseFirestore.instance
      .collection(kUserPushNotificationsCollectionName)
      .doc()
      .set(pushNotificationData);
}

void createPushNotifications(
    {required bool onlyRecurring, required DateTime selectedDateTime}) {
  List<PushNotificationScheduled> pushNotificationsList =
      scheduledPushNotificationsList;

  // Suppression des notifications non récurrentes
  if (onlyRecurring) {
    pushNotificationsList.removeWhere(
        (pushNotification) => pushNotification.isRecurring == false);
  }
  DateTime? scheduledDateTime = selectedDateTime;
  for (int i = 0; i < pushNotificationsList.length; i++) {
    PushNotificationScheduled pushNotification = pushNotificationsList[i];

    // // Si premier élément de la liste, notification à la date de départ
    // Pour chaque notification suivante, ajout d'un jour dans la date précédente
    if (i > 0) {
      scheduledDateTime = scheduledDateTime!.add(Duration(days: 1));
    }

    // Écriture de la push notification dans Firebase
    triggerPushNotification(
      notificationTitle: pushNotification.notificationTitle,
      notificationText: pushNotification.notificationText,
      scheduledTime: scheduledDateTime,
      notificationSound: 'default',
      userRefs: [currentUserReference!],
      initialPageName: pushNotification.initialPage,
      parameterData: pushNotification.parameterData!,
    );
  }
}

void modifyPushNotifications({required DateTime selectedDateTime}) async {
  DateTime now = DateTime.now();
  int counter = 0;

  try {
    // Récupération de tous les documents de la collection ff_user_push_notifications
    // de l'utilisateur
    QuerySnapshot notificationsSnapshot = await FirebaseFirestore.instance
        .collection('ff_user_push_notifications')
        .where('sender', isEqualTo: currentUserReference)
        .where('scheduled_time', isGreaterThanOrEqualTo: now)
        .get();

    // Suppression de chaque document
    for (QueryDocumentSnapshot docSnapshot in notificationsSnapshot.docs) {
      DateTime currentScheduledTime = docSnapshot['scheduled_time'].toDate();

      // Mise à jour de l'heure
      DateTime newScheduledTime = DateTime(
        currentScheduledTime.year,
        currentScheduledTime.month,
        currentScheduledTime.day,
        selectedDateTime.hour,
        selectedDateTime.minute,
      );
      docSnapshot.reference..update({'scheduled_time': newScheduledTime});
      counter++;
    }
  } catch (error) {
    print('Error updating documents: $error');
  }

  print(counter);
}
