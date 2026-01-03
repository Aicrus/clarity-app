import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class DiarioRecord extends FirestoreRecord {
  DiarioRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "created_at" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "First_Text" field.
  String? _firstText;
  String get firstText => _firstText ?? '';
  bool hasFirstText() => _firstText != null;

  // "Second_Text" field.
  String? _secondText;
  String get secondText => _secondText ?? '';
  bool hasSecondText() => _secondText != null;

  // "Third_Text" field.
  String? _thirdText;
  String get thirdText => _thirdText ?? '';
  bool hasThirdText() => _thirdText != null;

  // "date" field.
  DateTime? _date;
  DateTime? get date => _date;
  bool hasDate() => _date != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _createdAt = snapshotData['created_at'] as DateTime?;
    _firstText = snapshotData['First_Text'] as String?;
    _secondText = snapshotData['Second_Text'] as String?;
    _thirdText = snapshotData['Third_Text'] as String?;
    _date = snapshotData['date'] as DateTime?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('Diario')
          : FirebaseFirestore.instance.collectionGroup('Diario');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('Diario').doc(id);

  static Stream<DiarioRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => DiarioRecord.fromSnapshot(s));

  static Future<DiarioRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => DiarioRecord.fromSnapshot(s));

  static DiarioRecord fromSnapshot(DocumentSnapshot snapshot) => DiarioRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static DiarioRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      DiarioRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'DiarioRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is DiarioRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createDiarioRecordData({
  DateTime? createdAt,
  String? firstText,
  String? secondText,
  String? thirdText,
  DateTime? date,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'created_at': createdAt,
      'First_Text': firstText,
      'Second_Text': secondText,
      'Third_Text': thirdText,
      'date': date,
    }.withoutNulls,
  );

  return firestoreData;
}

class DiarioRecordDocumentEquality implements Equality<DiarioRecord> {
  const DiarioRecordDocumentEquality();

  @override
  bool equals(DiarioRecord? e1, DiarioRecord? e2) {
    return e1?.createdAt == e2?.createdAt &&
        e1?.firstText == e2?.firstText &&
        e1?.secondText == e2?.secondText &&
        e1?.thirdText == e2?.thirdText &&
        e1?.date == e2?.date;
  }

  @override
  int hash(DiarioRecord? e) => const ListEquality()
      .hash([e?.createdAt, e?.firstText, e?.secondText, e?.thirdText, e?.date]);

  @override
  bool isValidKey(Object? o) => o is DiarioRecord;
}
