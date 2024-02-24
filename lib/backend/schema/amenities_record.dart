import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AmenitiesRecord extends FirestoreRecord {
  AmenitiesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  void _initializeFields() {
    _image = snapshotData['image'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Amenities');

  static Stream<AmenitiesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AmenitiesRecord.fromSnapshot(s));

  static Future<AmenitiesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AmenitiesRecord.fromSnapshot(s));

  static AmenitiesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AmenitiesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AmenitiesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AmenitiesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AmenitiesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AmenitiesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAmenitiesRecordData({
  String? image,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'image': image,
    }.withoutNulls,
  );

  return firestoreData;
}

class AmenitiesRecordDocumentEquality implements Equality<AmenitiesRecord> {
  const AmenitiesRecordDocumentEquality();

  @override
  bool equals(AmenitiesRecord? e1, AmenitiesRecord? e2) {
    return e1?.image == e2?.image;
  }

  @override
  int hash(AmenitiesRecord? e) => const ListEquality().hash([e?.image]);

  @override
  bool isValidKey(Object? o) => o is AmenitiesRecord;
}
