import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ChaChingRecord extends FirestoreRecord {
  ChaChingRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "key" field.
  String? _key;
  String get key => _key ?? '';
  bool hasKey() => _key != null;

  void _initializeFields() {
    _key = snapshotData['key'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('ChaChing');

  static Stream<ChaChingRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ChaChingRecord.fromSnapshot(s));

  static Future<ChaChingRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ChaChingRecord.fromSnapshot(s));

  static ChaChingRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ChaChingRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ChaChingRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ChaChingRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ChaChingRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ChaChingRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createChaChingRecordData({
  String? key,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'key': key,
    }.withoutNulls,
  );

  return firestoreData;
}

class ChaChingRecordDocumentEquality implements Equality<ChaChingRecord> {
  const ChaChingRecordDocumentEquality();

  @override
  bool equals(ChaChingRecord? e1, ChaChingRecord? e2) {
    return e1?.key == e2?.key;
  }

  @override
  int hash(ChaChingRecord? e) => const ListEquality().hash([e?.key]);

  @override
  bool isValidKey(Object? o) => o is ChaChingRecord;
}
