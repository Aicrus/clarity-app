import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class ScheduleReminderRecord extends FirestoreRecord {
  ScheduleReminderRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "date" field.
  DateTime? _date;
  DateTime? get date => _date;
  bool hasDate() => _date != null;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "message" field.
  String? _message;
  String get message => _message ?? '';
  bool hasMessage() => _message != null;

  // "token" field.
  String? _token;
  String get token => _token ?? '';
  bool hasToken() => _token != null;

  void _initializeFields() {
    _date = snapshotData['date'] as DateTime?;
    _title = snapshotData['title'] as String?;
    _message = snapshotData['message'] as String?;
    _token = snapshotData['token'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('ScheduleReminder');

  static Stream<ScheduleReminderRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ScheduleReminderRecord.fromSnapshot(s));

  static Future<ScheduleReminderRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => ScheduleReminderRecord.fromSnapshot(s));

  static ScheduleReminderRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ScheduleReminderRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ScheduleReminderRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ScheduleReminderRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ScheduleReminderRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ScheduleReminderRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createScheduleReminderRecordData({
  DateTime? date,
  String? title,
  String? message,
  String? token,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'date': date,
      'title': title,
      'message': message,
      'token': token,
    }.withoutNulls,
  );

  return firestoreData;
}

class ScheduleReminderRecordDocumentEquality
    implements Equality<ScheduleReminderRecord> {
  const ScheduleReminderRecordDocumentEquality();

  @override
  bool equals(ScheduleReminderRecord? e1, ScheduleReminderRecord? e2) {
    return e1?.date == e2?.date &&
        e1?.title == e2?.title &&
        e1?.message == e2?.message &&
        e1?.token == e2?.token;
  }

  @override
  int hash(ScheduleReminderRecord? e) =>
      const ListEquality().hash([e?.date, e?.title, e?.message, e?.token]);

  @override
  bool isValidKey(Object? o) => o is ScheduleReminderRecord;
}
