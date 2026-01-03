import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UsersRecord extends FirestoreRecord {
  UsersRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "likes" field.
  List<String>? _likes;
  List<String> get likes => _likes ?? const [];
  bool hasLikes() => _likes != null;

  // "admin" field.
  bool? _admin;
  bool get admin => _admin ?? false;
  bool hasAdmin() => _admin != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "firstSubscribe" field.
  DateTime? _firstSubscribe;
  DateTime? get firstSubscribe => _firstSubscribe;
  bool hasFirstSubscribe() => _firstSubscribe != null;

  // "hadEvaluateApp" field.
  bool? _hadEvaluateApp;
  bool get hadEvaluateApp => _hadEvaluateApp ?? false;
  bool hasHadEvaluateApp() => _hadEvaluateApp != null;

  // "ReminderIsSet" field.
  bool? _reminderIsSet;
  bool get reminderIsSet => _reminderIsSet ?? false;
  bool hasReminderIsSet() => _reminderIsSet != null;

  // "ReminderDate" field.
  DateTime? _reminderDate;
  DateTime? get reminderDate => _reminderDate;
  bool hasReminderDate() => _reminderDate != null;

  // "isPremium" field.
  bool? _isPremium;
  bool get isPremium => _isPremium ?? false;
  bool hasIsPremium() => _isPremium != null;

  // "isCurrentlyintrial" field.
  bool? _isCurrentlyintrial;
  bool get isCurrentlyintrial => _isCurrentlyintrial ?? false;
  bool hasIsCurrentlyintrial() => _isCurrentlyintrial != null;

  // "is_Trial_Done" field.
  bool? _isTrialDone;
  bool get isTrialDone => _isTrialDone ?? false;
  bool hasIsTrialDone() => _isTrialDone != null;

  // "howManyOpen" field.
  int? _howManyOpen;
  int get howManyOpen => _howManyOpen ?? 0;
  bool hasHowManyOpen() => _howManyOpen != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _likes = getDataList(snapshotData['likes']);
    _admin = snapshotData['admin'] as bool?;
    _name = snapshotData['name'] as String?;
    _firstSubscribe = snapshotData['firstSubscribe'] as DateTime?;
    _hadEvaluateApp = snapshotData['hadEvaluateApp'] as bool?;
    _reminderIsSet = snapshotData['ReminderIsSet'] as bool?;
    _reminderDate = snapshotData['ReminderDate'] as DateTime?;
    _isPremium = snapshotData['isPremium'] as bool?;
    _isCurrentlyintrial = snapshotData['isCurrentlyintrial'] as bool?;
    _isTrialDone = snapshotData['is_Trial_Done'] as bool?;
    _howManyOpen = castToType<int>(snapshotData['howManyOpen']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('users');

  static Stream<UsersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UsersRecord.fromSnapshot(s));

  static Future<UsersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UsersRecord.fromSnapshot(s));

  static UsersRecord fromSnapshot(DocumentSnapshot snapshot) => UsersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UsersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UsersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UsersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UsersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUsersRecordData({
  String? email,
  String? displayName,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
  bool? admin,
  String? name,
  DateTime? firstSubscribe,
  bool? hadEvaluateApp,
  bool? reminderIsSet,
  DateTime? reminderDate,
  bool? isPremium,
  bool? isCurrentlyintrial,
  bool? isTrialDone,
  int? howManyOpen,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'display_name': displayName,
      'photo_url': photoUrl,
      'uid': uid,
      'created_time': createdTime,
      'phone_number': phoneNumber,
      'admin': admin,
      'name': name,
      'firstSubscribe': firstSubscribe,
      'hadEvaluateApp': hadEvaluateApp,
      'ReminderIsSet': reminderIsSet,
      'ReminderDate': reminderDate,
      'isPremium': isPremium,
      'isCurrentlyintrial': isCurrentlyintrial,
      'is_Trial_Done': isTrialDone,
      'howManyOpen': howManyOpen,
    }.withoutNulls,
  );

  return firestoreData;
}

class UsersRecordDocumentEquality implements Equality<UsersRecord> {
  const UsersRecordDocumentEquality();

  @override
  bool equals(UsersRecord? e1, UsersRecord? e2) {
    const listEquality = ListEquality();
    return e1?.email == e2?.email &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber &&
        listEquality.equals(e1?.likes, e2?.likes) &&
        e1?.admin == e2?.admin &&
        e1?.name == e2?.name &&
        e1?.firstSubscribe == e2?.firstSubscribe &&
        e1?.hadEvaluateApp == e2?.hadEvaluateApp &&
        e1?.reminderIsSet == e2?.reminderIsSet &&
        e1?.reminderDate == e2?.reminderDate &&
        e1?.isPremium == e2?.isPremium &&
        e1?.isCurrentlyintrial == e2?.isCurrentlyintrial &&
        e1?.isTrialDone == e2?.isTrialDone &&
        e1?.howManyOpen == e2?.howManyOpen;
  }

  @override
  int hash(UsersRecord? e) => const ListEquality().hash([
        e?.email,
        e?.displayName,
        e?.photoUrl,
        e?.uid,
        e?.createdTime,
        e?.phoneNumber,
        e?.likes,
        e?.admin,
        e?.name,
        e?.firstSubscribe,
        e?.hadEvaluateApp,
        e?.reminderIsSet,
        e?.reminderDate,
        e?.isPremium,
        e?.isCurrentlyintrial,
        e?.isTrialDone,
        e?.howManyOpen
      ]);

  @override
  bool isValidKey(Object? o) => o is UsersRecord;
}
