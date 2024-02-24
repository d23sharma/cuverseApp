import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AllLocationsRecord extends FirestoreRecord {
  AllLocationsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "location" field.
  LatLng? _location;
  LatLng? get location => _location;
  bool hasLocation() => _location != null;

  // "address" field.
  String? _address;
  String get address => _address ?? '';
  bool hasAddress() => _address != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "category" field.
  String? _category;
  String get category => _category ?? '';
  bool hasCategory() => _category != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _location = snapshotData['location'] as LatLng?;
    _address = snapshotData['address'] as String?;
    _image = snapshotData['image'] as String?;
    _category = snapshotData['category'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('allLocations');

  static Stream<AllLocationsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AllLocationsRecord.fromSnapshot(s));

  static Future<AllLocationsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AllLocationsRecord.fromSnapshot(s));

  static AllLocationsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AllLocationsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AllLocationsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AllLocationsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AllLocationsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AllLocationsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAllLocationsRecordData({
  String? name,
  LatLng? location,
  String? address,
  String? image,
  String? category,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'location': location,
      'address': address,
      'image': image,
      'category': category,
    }.withoutNulls,
  );

  return firestoreData;
}

class AllLocationsRecordDocumentEquality
    implements Equality<AllLocationsRecord> {
  const AllLocationsRecordDocumentEquality();

  @override
  bool equals(AllLocationsRecord? e1, AllLocationsRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.location == e2?.location &&
        e1?.address == e2?.address &&
        e1?.image == e2?.image &&
        e1?.category == e2?.category;
  }

  @override
  int hash(AllLocationsRecord? e) => const ListEquality()
      .hash([e?.name, e?.location, e?.address, e?.image, e?.category]);

  @override
  bool isValidKey(Object? o) => o is AllLocationsRecord;
}
