import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SkipPageRecord extends FirestoreRecord {
  SkipPageRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "skipPage" field.
  bool? _skipPage;
  bool get skipPage => _skipPage ?? false;
  bool hasSkipPage() => _skipPage != null;

  void _initializeFields() {
    _skipPage = snapshotData['skipPage'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('skipPage');

  static Stream<SkipPageRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => SkipPageRecord.fromSnapshot(s));

  static Future<SkipPageRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => SkipPageRecord.fromSnapshot(s));

  static SkipPageRecord fromSnapshot(DocumentSnapshot snapshot) =>
      SkipPageRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SkipPageRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SkipPageRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SkipPageRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is SkipPageRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSkipPageRecordData({
  bool? skipPage,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'skipPage': skipPage,
    }.withoutNulls,
  );

  return firestoreData;
}

class SkipPageRecordDocumentEquality implements Equality<SkipPageRecord> {
  const SkipPageRecordDocumentEquality();

  @override
  bool equals(SkipPageRecord? e1, SkipPageRecord? e2) {
    return e1?.skipPage == e2?.skipPage;
  }

  @override
  int hash(SkipPageRecord? e) => const ListEquality().hash([e?.skipPage]);

  @override
  bool isValidKey(Object? o) => o is SkipPageRecord;
}
