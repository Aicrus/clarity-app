import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class FeedbackRecord extends FirestoreRecord {
  FeedbackRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "userName" field.
  String? _userName;
  String get userName => _userName ?? '';
  bool hasUserName() => _userName != null;

  // "userRef" field.
  DocumentReference? _userRef;
  DocumentReference? get userRef => _userRef;
  bool hasUserRef() => _userRef != null;

  // "createdTime" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "describe" field.
  String? _describe;
  String get describe => _describe ?? '';
  bool hasDescribe() => _describe != null;

  // "object" field.
  String? _object;
  String get object => _object ?? '';
  bool hasObject() => _object != null;

  void _initializeFields() {
    _userName = snapshotData['userName'] as String?;
    _userRef = snapshotData['userRef'] as DocumentReference?;
    _createdTime = snapshotData['createdTime'] as DateTime?;
    _email = snapshotData['email'] as String?;
    _describe = snapshotData['describe'] as String?;
    _object = snapshotData['object'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('feedback');

  static Stream<FeedbackRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => FeedbackRecord.fromSnapshot(s));

  static Future<FeedbackRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => FeedbackRecord.fromSnapshot(s));

  static FeedbackRecord fromSnapshot(DocumentSnapshot snapshot) =>
      FeedbackRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static FeedbackRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      FeedbackRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'FeedbackRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is FeedbackRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createFeedbackRecordData({
  String? userName,
  DocumentReference? userRef,
  DateTime? createdTime,
  String? email,
  String? describe,
  String? object,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'userName': userName,
      'userRef': userRef,
      'createdTime': createdTime,
      'email': email,
      'describe': describe,
      'object': object,
    }.withoutNulls,
  );

  return firestoreData;
}

class FeedbackRecordDocumentEquality implements Equality<FeedbackRecord> {
  const FeedbackRecordDocumentEquality();

  @override
  bool equals(FeedbackRecord? e1, FeedbackRecord? e2) {
    return e1?.userName == e2?.userName &&
        e1?.userRef == e2?.userRef &&
        e1?.createdTime == e2?.createdTime &&
        e1?.email == e2?.email &&
        e1?.describe == e2?.describe &&
        e1?.object == e2?.object;
  }

  @override
  int hash(FeedbackRecord? e) => const ListEquality().hash([
        e?.userName,
        e?.userRef,
        e?.createdTime,
        e?.email,
        e?.describe,
        e?.object
      ]);

  @override
  bool isValidKey(Object? o) => o is FeedbackRecord;
}
