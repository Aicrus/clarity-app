import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AudioTeoriaRecord extends FirestoreRecord {
  AudioTeoriaRecord._(
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

  // "audioTeoria" field.
  String? _audioTeoria;
  String get audioTeoria => _audioTeoria ?? '';
  bool hasAudioTeoria() => _audioTeoria != null;

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
    _audioTeoria = snapshotData['audioTeoria'] as String?;
    _imageAudio = snapshotData['imageAudio'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('audioTeoria');

  static Stream<AudioTeoriaRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AudioTeoriaRecord.fromSnapshot(s));

  static Future<AudioTeoriaRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AudioTeoriaRecord.fromSnapshot(s));

  static AudioTeoriaRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AudioTeoriaRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AudioTeoriaRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AudioTeoriaRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AudioTeoriaRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AudioTeoriaRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAudioTeoriaRecordData({
  DateTime? createdAt,
  String? title,
  String? length,
  int? index,
  DocumentReference? lessonTypeRef,
  String? audioTeoria,
  String? imageAudio,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'created_at': createdAt,
      'title': title,
      'length': length,
      'index': index,
      'LessonTypeRef': lessonTypeRef,
      'audioTeoria': audioTeoria,
      'imageAudio': imageAudio,
    }.withoutNulls,
  );

  return firestoreData;
}

class AudioTeoriaRecordDocumentEquality implements Equality<AudioTeoriaRecord> {
  const AudioTeoriaRecordDocumentEquality();

  @override
  bool equals(AudioTeoriaRecord? e1, AudioTeoriaRecord? e2) {
    return e1?.createdAt == e2?.createdAt &&
        e1?.title == e2?.title &&
        e1?.length == e2?.length &&
        e1?.index == e2?.index &&
        e1?.lessonTypeRef == e2?.lessonTypeRef &&
        e1?.audioTeoria == e2?.audioTeoria &&
        e1?.imageAudio == e2?.imageAudio;
  }

  @override
  int hash(AudioTeoriaRecord? e) => const ListEquality().hash([
        e?.createdAt,
        e?.title,
        e?.length,
        e?.index,
        e?.lessonTypeRef,
        e?.audioTeoria,
        e?.imageAudio
      ]);

  @override
  bool isValidKey(Object? o) => o is AudioTeoriaRecord;
}
