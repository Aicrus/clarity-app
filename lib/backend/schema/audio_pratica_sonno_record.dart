import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AudioPraticaSonnoRecord extends FirestoreRecord {
  AudioPraticaSonnoRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "created_at" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "length" field.
  String? _length;
  String get length => _length ?? '';
  bool hasLength() => _length != null;

  // "index" field.
  int? _index;
  int get index => _index ?? 0;
  bool hasIndex() => _index != null;

  // "LessonTypeRef" field.
  DocumentReference? _lessonTypeRef;
  DocumentReference? get lessonTypeRef => _lessonTypeRef;
  bool hasLessonTypeRef() => _lessonTypeRef != null;

  // "audioPratica" field.
  String? _audioPratica;
  String get audioPratica => _audioPratica ?? '';
  bool hasAudioPratica() => _audioPratica != null;

  // "imageAudio" field.
  String? _imageAudio;
  String get imageAudio => _imageAudio ?? '';
  bool hasImageAudio() => _imageAudio != null;

  void _initializeFields() {
    _createdAt = snapshotData['created_at'] as DateTime?;
    _title = snapshotData['title'] as String?;
    _length = snapshotData['length'] as String?;
    _index = castToType<int>(snapshotData['index']);
    _lessonTypeRef = snapshotData['LessonTypeRef'] as DocumentReference?;
    _audioPratica = snapshotData['audioPratica'] as String?;
    _imageAudio = snapshotData['imageAudio'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('audioPraticaSonno');

  static Stream<AudioPraticaSonnoRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AudioPraticaSonnoRecord.fromSnapshot(s));

  static Future<AudioPraticaSonnoRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => AudioPraticaSonnoRecord.fromSnapshot(s));

  static AudioPraticaSonnoRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AudioPraticaSonnoRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AudioPraticaSonnoRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AudioPraticaSonnoRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AudioPraticaSonnoRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AudioPraticaSonnoRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAudioPraticaSonnoRecordData({
  DateTime? createdAt,
  String? title,
  String? length,
  int? index,
  DocumentReference? lessonTypeRef,
  String? audioPratica,
  String? imageAudio,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'created_at': createdAt,
      'title': title,
      'length': length,
      'index': index,
      'LessonTypeRef': lessonTypeRef,
      'audioPratica': audioPratica,
      'imageAudio': imageAudio,
    }.withoutNulls,
  );

  return firestoreData;
}

class AudioPraticaSonnoRecordDocumentEquality
    implements Equality<AudioPraticaSonnoRecord> {
  const AudioPraticaSonnoRecordDocumentEquality();

  @override
  bool equals(AudioPraticaSonnoRecord? e1, AudioPraticaSonnoRecord? e2) {
    return e1?.createdAt == e2?.createdAt &&
        e1?.title == e2?.title &&
        e1?.length == e2?.length &&
        e1?.index == e2?.index &&
        e1?.lessonTypeRef == e2?.lessonTypeRef &&
        e1?.audioPratica == e2?.audioPratica &&
        e1?.imageAudio == e2?.imageAudio;
  }

  @override
  int hash(AudioPraticaSonnoRecord? e) => const ListEquality().hash([
        e?.createdAt,
        e?.title,
        e?.length,
        e?.index,
        e?.lessonTypeRef,
        e?.audioPratica,
        e?.imageAudio
      ]);

  @override
  bool isValidKey(Object? o) => o is AudioPraticaSonnoRecord;
}
