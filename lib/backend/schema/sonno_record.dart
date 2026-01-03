import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class SonnoRecord extends FirestoreRecord {
  SonnoRecord._(
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

  // "isPratica" field.
  bool? _isPratica;
  bool get isPratica => _isPratica ?? false;
  bool hasIsPratica() => _isPratica != null;

  // "isTeoria" field.
  bool? _isTeoria;
  bool get isTeoria => _isTeoria ?? false;
  bool hasIsTeoria() => _isTeoria != null;

  // "PraticaAudioFiles" field.
  List<String>? _praticaAudioFiles;
  List<String> get praticaAudioFiles => _praticaAudioFiles ?? const [];
  bool hasPraticaAudioFiles() => _praticaAudioFiles != null;

  // "TeoriaAudioFiles" field.
  List<String>? _teoriaAudioFiles;
  List<String> get teoriaAudioFiles => _teoriaAudioFiles ?? const [];
  bool hasTeoriaAudioFiles() => _teoriaAudioFiles != null;

  // "day" field.
  String? _day;
  String get day => _day ?? '';
  bool hasDay() => _day != null;

  // "length" field.
  String? _length;
  String get length => _length ?? '';
  bool hasLength() => _length != null;

  // "isAscolti" field.
  bool? _isAscolti;
  bool get isAscolti => _isAscolti ?? false;
  bool hasIsAscolti() => _isAscolti != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _image = snapshotData['image'] as String?;
    _title = snapshotData['Title'] as String?;
    _susubtitle = snapshotData['Susubtitle'] as String?;
    _createdAt = snapshotData['created_at'] as DateTime?;
    _userRef = snapshotData['userRef'] as DocumentReference?;
    _premium = snapshotData['premium'] as bool?;
    _isPratica = snapshotData['isPratica'] as bool?;
    _isTeoria = snapshotData['isTeoria'] as bool?;
    _praticaAudioFiles = getDataList(snapshotData['PraticaAudioFiles']);
    _teoriaAudioFiles = getDataList(snapshotData['TeoriaAudioFiles']);
    _day = snapshotData['day'] as String?;
    _length = snapshotData['length'] as String?;
    _isAscolti = snapshotData['isAscolti'] as bool?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('Sonno')
          : FirebaseFirestore.instance.collectionGroup('Sonno');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('Sonno').doc(id);

  static Stream<SonnoRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => SonnoRecord.fromSnapshot(s));

  static Future<SonnoRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => SonnoRecord.fromSnapshot(s));

  static SonnoRecord fromSnapshot(DocumentSnapshot snapshot) => SonnoRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SonnoRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SonnoRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SonnoRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is SonnoRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSonnoRecordData({
  String? image,
  String? title,
  String? susubtitle,
  DateTime? createdAt,
  DocumentReference? userRef,
  bool? premium,
  bool? isPratica,
  bool? isTeoria,
  String? day,
  String? length,
  bool? isAscolti,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'image': image,
      'Title': title,
      'Susubtitle': susubtitle,
      'created_at': createdAt,
      'userRef': userRef,
      'premium': premium,
      'isPratica': isPratica,
      'isTeoria': isTeoria,
      'day': day,
      'length': length,
      'isAscolti': isAscolti,
    }.withoutNulls,
  );

  return firestoreData;
}

class SonnoRecordDocumentEquality implements Equality<SonnoRecord> {
  const SonnoRecordDocumentEquality();

  @override
  bool equals(SonnoRecord? e1, SonnoRecord? e2) {
    const listEquality = ListEquality();
    return e1?.image == e2?.image &&
        e1?.title == e2?.title &&
        e1?.susubtitle == e2?.susubtitle &&
        e1?.createdAt == e2?.createdAt &&
        e1?.userRef == e2?.userRef &&
        e1?.premium == e2?.premium &&
        e1?.isPratica == e2?.isPratica &&
        e1?.isTeoria == e2?.isTeoria &&
        listEquality.equals(e1?.praticaAudioFiles, e2?.praticaAudioFiles) &&
        listEquality.equals(e1?.teoriaAudioFiles, e2?.teoriaAudioFiles) &&
        e1?.day == e2?.day &&
        e1?.length == e2?.length &&
        e1?.isAscolti == e2?.isAscolti;
  }

  @override
  int hash(SonnoRecord? e) => const ListEquality().hash([
        e?.image,
        e?.title,
        e?.susubtitle,
        e?.createdAt,
        e?.userRef,
        e?.premium,
        e?.isPratica,
        e?.isTeoria,
        e?.praticaAudioFiles,
        e?.teoriaAudioFiles,
        e?.day,
        e?.length,
        e?.isAscolti
      ]);

  @override
  bool isValidKey(Object? o) => o is SonnoRecord;
}
