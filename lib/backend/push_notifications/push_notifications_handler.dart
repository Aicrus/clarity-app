import 'dart:async';

import 'package:clarity/auth/firebase_auth/auth_util.dart';
import 'package:clarity/backend/push_notifications/push_notifications_util.dart';

import '../backend.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';

final _handledMessageIds = <String?>{};

class PushNotificationsHandler extends StatefulWidget {
  const PushNotificationsHandler({super.key, required this.child});

  final Widget child;

  @override
  _PushNotificationsHandlerState createState() =>
      _PushNotificationsHandlerState();
}

class _PushNotificationsHandlerState extends State<PushNotificationsHandler> {
  bool _loading = false;

  Future handleOpenedPushNotification() async {
    if (isWeb) {
      return;
    }

    final notification = await FirebaseMessaging.instance.getInitialMessage();
    if (notification != null) {
      await _handlePushNotification(notification);
    }
    FirebaseMessaging.onMessageOpenedApp.listen(_handlePushNotification);
  }

  Future _handlePushNotification(RemoteMessage message) async {
    if (_handledMessageIds.contains(message.messageId)) {
      return;
    }
    _handledMessageIds.add(message.messageId);

    if (mounted) {
      setState(() => _loading = true);
    }
    try {
      final initialPageName = message.data['initialPageName'] as String;
      final initialParameterData = getInitialParameterData(message.data);
      final parametersBuilder = parametersBuilderMap[initialPageName];

      // Création des notifications récurrentes si la valeur
      // "renewScheduledNotifications" existe
      if (initialParameterData.containsKey('renewScheduledNotifications')) {
        QuerySnapshot notificationsSnapshot = await FirebaseFirestore.instance
            .collection('ff_user_push_notifications')
            .where('sender', isEqualTo: currentUserReference)
            .orderBy('scheduled_time', descending: true)
            .limit(1)
            .get();

        if (notificationsSnapshot.docs.isNotEmpty) {
          DocumentSnapshot lastNotificationSnapshot =
              notificationsSnapshot.docs.first;

          DateTime scheduledDateTime =
              lastNotificationSnapshot['scheduled_time'].toDate();
          scheduledDateTime = scheduledDateTime.add(Duration(days: 1));
          createPushNotifications(
              onlyRecurring: true, selectedDateTime: scheduledDateTime);
        }
      }

      if (parametersBuilder != null) {
        final parameterData = await parametersBuilder(initialParameterData);

        // Ouverture sur audioM avec une leçon
        // ou sur homeM avec la ratingModal
        if (initialPageName == 'audioM') {
          final String audioLesson = initialParameterData['audioRef'];
          context.pushNamed(
            'audioM',
            queryParameters: {'audioRef': audioLesson}.withoutNulls,
            extra: <String, dynamic>{
              kTransitionInfoKey: const TransitionInfo(
                hasTransition: true,
                transitionType: PageTransitionType.fade,
                duration: Duration(milliseconds: 0),
              ),
            },
          );
        } else if (initialPageName == 'homeM') {
          final bool showRatingModal =
              initialParameterData.containsKey('showRatingModal')
                  ? true
                  : false;
          ;
          context.pushNamed(
            initialPageName,
            queryParameters: {'showRatingModal': showRatingModal.toString()},
            pathParameters: parameterData.pathParameters,
            extra: parameterData.extra,
          );
        } else {
          context.pushNamed(
            initialPageName,
            pathParameters: parameterData.pathParameters,
            extra: parameterData.extra,
          );
        }
      }
    } catch (e) {
      print('Error: $e');
    } finally {
      if (mounted) {
        setState(() => _loading = false);
      }
    }
  }

  @override
  void initState() {
    super.initState();
    handleOpenedPushNotification();
  }

  @override
  Widget build(BuildContext context) => _loading
      ? Container(
          color: Colors.transparent,
          child: Image.asset(
            'assets/images/Splash_screen_light.jpg',
            fit: BoxFit.cover,
          ),
        )
      : widget.child;
}

class ParameterData {
  const ParameterData(
      {this.requiredParams = const {}, this.allParams = const {}});
  final Map<String, String?> requiredParams;
  final Map<String, dynamic> allParams;

  Map<String, String> get pathParameters => Map.fromEntries(
        requiredParams.entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
  Map<String, dynamic> get extra => Map.fromEntries(
        allParams.entries.where((e) => e.value != null),
      );

  static Future<ParameterData> Function(Map<String, dynamic>) none() =>
      (data) async => const ParameterData();
}

final parametersBuilderMap =
    <String, Future<ParameterData> Function(Map<String, dynamic>)>{
  'authRoute': ParameterData.none(),
  'signUp': ParameterData.none(),
  'resetPassword': ParameterData.none(),
  'homeP': ParameterData.none(),
  'contentP': (data) async => ParameterData(
        allParams: {
          'lessonRefPotenzia':
              getParameter<DocumentReference>(data, 'lessonRefPotenzia'),
        },
      ),
  'audioP': (data) async => ParameterData(
        allParams: {
          'docPotenzia': await getDocumentParameter<PotenziamentiRecord>(
              data, 'docPotenzia', PotenziamentiRecord.fromSnapshot),
        },
      ),
  'homeS': ParameterData.none(),
  'contentS': (data) async => ParameterData(
        allParams: {
          'lessonRefSonno':
              getParameter<DocumentReference>(data, 'lessonRefSonno'),
        },
      ),
  'audioS': (data) async => ParameterData(
        allParams: {
          'audioRef': await getDocumentParameter<SonnoRecord>(
              data, 'audioRef', SonnoRecord.fromSnapshot),
        },
      ),
  'agendaForm': ParameterData.none(),
  'agendaList': ParameterData.none(),
  'menu': ParameterData.none(),
  'signIn': ParameterData.none(),
  'question': ParameterData.none(),
  'privacyPolicy': ParameterData.none(),
  'changeMail': ParameterData.none(),
  'logOut': ParameterData.none(),
  'deleteAccount': ParameterData.none(),
  'settings': ParameterData.none(),
  'linkUtili': ParameterData.none(),
  'qna': ParameterData.none(),
  'qnaDomandeTecniche': ParameterData.none(),
  'qnaMeditazione': ParameterData.none(),
  'contactUs': ParameterData.none(),
  'premium': ParameterData.none(),
  'onboarding': ParameterData.none(),
  'onboardingRoute': ParameterData.none(),
  'changePassword': ParameterData.none(),
  'reminder': ParameterData.none(),
  'AdminContentAddForm': ParameterData.none(),
  'homeM': ParameterData.none(),
  'contentM': (data) async => ParameterData(
        allParams: {
          'lessonRefMedita':
              getParameter<DocumentReference>(data, 'lessonRefMedita'),
        },
      ),
  'audioM': (data) async => ParameterData(
        allParams: {
          'audioRef': getParameter<DocumentReference>(data, 'audioRef'),
        },
      ),
  'DashBoardMeditazioni': ParameterData.none(),
  'adminmenu': ParameterData.none(),
  'DashBoardPotenziamenti': ParameterData.none(),
  'DashBoardSonno': ParameterData.none(),
  'splashScreen': ParameterData.none(),
};

Map<String, dynamic> getInitialParameterData(Map<String, dynamic> data) {
  try {
    final parameterDataStr = data['parameterData'];
    if (parameterDataStr == null ||
        parameterDataStr is! String ||
        parameterDataStr.isEmpty) {
      return {};
    }
    return jsonDecode(parameterDataStr) as Map<String, dynamic>;
  } catch (e) {
    print('Error parsing parameter data: $e');
    return {};
  }
}
