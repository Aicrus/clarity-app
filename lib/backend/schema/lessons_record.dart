import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class LessonsRecord extends FirestoreRecord {
  LessonsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "Title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "Susubtitle" field.
  String? _susubtitle;
  String get susubtitle => _susubtitle ?? '';
  bool hasSusubtitle() => _susubtitle != null;

  // "created_at" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "userRef" field.
  DocumentReference? _userRef;
  DocumentReference? get userRef => _userRef;
  bool hasUserRef() => _userRef != null;

  // "premium" field.
  bool? _premium;
  bool get premium => _premium ?? false;
  bool hasPremium() => _premium != null;

  // "duration" field.
  String? _duration;
  String get duration => _duration ?? '';
  bool hasDuration() => _duration != null;

  // "Category" field.
  String? _category;
  String get category => _category ?? '';
  bool hasCategory() => _category != null;

  // "index" field.
  String? _index;
  String get index => _index ?? '';
  bool hasIndex() => _index != null;

  // "isLive" field.
  bool? _isLive;
  bool get isLive => _isLive ?? false;
  bool hasIsLive() => _isLive != null;

  void _initializeFields() {
    _image = snapshotData['image'] as String?;
    _title = snapshotData['Title'] as String?;
    _susubtitle = snapshotData['Susubtitle'] as String?;
    _createdAt = snapshotData['created_at'] as DateTime?;
    _userRef = snapshotData['userRef'] as DocumentReference?;
    _premium = snapshotData['premium'] as bool?;
    _duration = snapshotData['duration'] as String?;
    _category = snapshotData['Category'] as String?;
    _index = snapshotData['index'] as String?;
    _isLive = snapshotData['isLive'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Lessons');

  static Stream<LessonsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => LessonsRecord.fromSnapshot(s));

  static Future<LessonsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => LessonsRecord.fromSnapshot(s));

  static LessonsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      LessonsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static LessonsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      LessonsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'LessonsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is LessonsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createLessonsRecordData({
  String? image,
  String? title,
  String? susubtitle,
  DateTime? createdAt,
  DocumentReference? userRef,
  bool? premium,
  String? duration,
  String? category,
  String? index,
  bool? isLive,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'image': image,
      'Title': title,
      'Susubtitle': susubtitle,
      'created_at': createdAt,
      'userRef': userRef,
      'premium': premium,
      'duration': duration,
      'Category': category,
      'index': index,
      'isLive': isLive,
    }.withoutNulls,
  );

  return firestoreData;
}

class LessonsRecordDocumentEquality implements Equality<LessonsRecord> {
  const LessonsRecordDocumentEquality();

  @override
  bool equals(LessonsRecord? e1, LessonsRecord? e2) {
    return e1?.image == e2?.image &&
        e1?.title == e2?.title &&
        e1?.susubtitle == e2?.susubtitle &&
        e1?.createdAt == e2?.createdAt &&
        e1?.userRef == e2?.userRef &&
        e1?.premium == e2?.premium &&
        e1?.duration == e2?.duration &&
        e1?.category == e2?.category &&
        e1?.index == e2?.index &&
        e1?.isLive == e2?.isLive;
  }

  @override
  int hash(LessonsRecord? e) => const ListEquality().hash([
        e?.image,
        e?.title,
        e?.susubtitle,
        e?.createdAt,
        e?.userRef,
        e?.premium,
        e?.duration,
        e?.category,
        e?.index,
        e?.isLive
      ]);

  @override
  bool isValidKey(Object? o) => o is LessonsRecord;
}
