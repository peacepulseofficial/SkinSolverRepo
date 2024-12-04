import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RoutinesRecord extends FirestoreRecord {
  RoutinesRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "morningStep_one" field.
  String? _morningStepOne;
  String get morningStepOne => _morningStepOne ?? '';
  bool hasMorningStepOne() => _morningStepOne != null;

  // "morningStep_two" field.
  String? _morningStepTwo;
  String get morningStepTwo => _morningStepTwo ?? '';
  bool hasMorningStepTwo() => _morningStepTwo != null;

  // "morningStep_three" field.
  String? _morningStepThree;
  String get morningStepThree => _morningStepThree ?? '';
  bool hasMorningStepThree() => _morningStepThree != null;

  // "morningStep_four" field.
  String? _morningStepFour;
  String get morningStepFour => _morningStepFour ?? '';
  bool hasMorningStepFour() => _morningStepFour != null;

  // "morningStep_five" field.
  String? _morningStepFive;
  String get morningStepFive => _morningStepFive ?? '';
  bool hasMorningStepFive() => _morningStepFive != null;

  // "nightStep_one" field.
  String? _nightStepOne;
  String get nightStepOne => _nightStepOne ?? '';
  bool hasNightStepOne() => _nightStepOne != null;

  // "nightStep_two" field.
  String? _nightStepTwo;
  String get nightStepTwo => _nightStepTwo ?? '';
  bool hasNightStepTwo() => _nightStepTwo != null;

  // "nightStep_three" field.
  String? _nightStepThree;
  String get nightStepThree => _nightStepThree ?? '';
  bool hasNightStepThree() => _nightStepThree != null;

  // "nightStep_four" field.
  String? _nightStepFour;
  String get nightStepFour => _nightStepFour ?? '';
  bool hasNightStepFour() => _nightStepFour != null;

  // "nightStep_five" field.
  String? _nightStepFive;
  String get nightStepFive => _nightStepFive ?? '';
  bool hasNightStepFive() => _nightStepFive != null;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  bool hasId() => _id != null;

  void _initializeFields() {
    _morningStepOne = snapshotData['morningStep_one'] as String?;
    _morningStepTwo = snapshotData['morningStep_two'] as String?;
    _morningStepThree = snapshotData['morningStep_three'] as String?;
    _morningStepFour = snapshotData['morningStep_four'] as String?;
    _morningStepFive = snapshotData['morningStep_five'] as String?;
    _nightStepOne = snapshotData['nightStep_one'] as String?;
    _nightStepTwo = snapshotData['nightStep_two'] as String?;
    _nightStepThree = snapshotData['nightStep_three'] as String?;
    _nightStepFour = snapshotData['nightStep_four'] as String?;
    _nightStepFive = snapshotData['nightStep_five'] as String?;
    _id = snapshotData['id'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('routines');

  static Stream<RoutinesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => RoutinesRecord.fromSnapshot(s));

  static Future<RoutinesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => RoutinesRecord.fromSnapshot(s));

  static RoutinesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      RoutinesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static RoutinesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      RoutinesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'RoutinesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is RoutinesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createRoutinesRecordData({
  String? morningStepOne,
  String? morningStepTwo,
  String? morningStepThree,
  String? morningStepFour,
  String? morningStepFive,
  String? nightStepOne,
  String? nightStepTwo,
  String? nightStepThree,
  String? nightStepFour,
  String? nightStepFive,
  String? id,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'morningStep_one': morningStepOne,
      'morningStep_two': morningStepTwo,
      'morningStep_three': morningStepThree,
      'morningStep_four': morningStepFour,
      'morningStep_five': morningStepFive,
      'nightStep_one': nightStepOne,
      'nightStep_two': nightStepTwo,
      'nightStep_three': nightStepThree,
      'nightStep_four': nightStepFour,
      'nightStep_five': nightStepFive,
      'id': id,
    }.withoutNulls,
  );

  return firestoreData;
}

class RoutinesRecordDocumentEquality implements Equality<RoutinesRecord> {
  const RoutinesRecordDocumentEquality();

  @override
  bool equals(RoutinesRecord? e1, RoutinesRecord? e2) {
    return e1?.morningStepOne == e2?.morningStepOne &&
        e1?.morningStepTwo == e2?.morningStepTwo &&
        e1?.morningStepThree == e2?.morningStepThree &&
        e1?.morningStepFour == e2?.morningStepFour &&
        e1?.morningStepFive == e2?.morningStepFive &&
        e1?.nightStepOne == e2?.nightStepOne &&
        e1?.nightStepTwo == e2?.nightStepTwo &&
        e1?.nightStepThree == e2?.nightStepThree &&
        e1?.nightStepFour == e2?.nightStepFour &&
        e1?.nightStepFive == e2?.nightStepFive &&
        e1?.id == e2?.id;
  }

  @override
  int hash(RoutinesRecord? e) => const ListEquality().hash([
        e?.morningStepOne,
        e?.morningStepTwo,
        e?.morningStepThree,
        e?.morningStepFour,
        e?.morningStepFive,
        e?.nightStepOne,
        e?.nightStepTwo,
        e?.nightStepThree,
        e?.nightStepFour,
        e?.nightStepFive,
        e?.id
      ]);

  @override
  bool isValidKey(Object? o) => o is RoutinesRecord;
}
