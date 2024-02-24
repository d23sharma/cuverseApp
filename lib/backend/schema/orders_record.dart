import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class OrdersRecord extends FirestoreRecord {
  OrdersRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "destination" field.
  LatLng? _destination;
  LatLng? get destination => _destination;
  bool hasDestination() => _destination != null;

  // "distanceLeft" field.
  String? _distanceLeft;
  String get distanceLeft => _distanceLeft ?? '';
  bool hasDistanceLeft() => _distanceLeft != null;

  // "driversPosition" field.
  List<LatLng>? _driversPosition;
  List<LatLng> get driversPosition => _driversPosition ?? const [];
  bool hasDriversPosition() => _driversPosition != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "source" field.
  LatLng? _source;
  LatLng? get source => _source;
  bool hasSource() => _source != null;

  // "timeLeft" field.
  String? _timeLeft;
  String get timeLeft => _timeLeft ?? '';
  bool hasTimeLeft() => _timeLeft != null;

  void _initializeFields() {
    _destination = snapshotData['destination'] as LatLng?;
    _distanceLeft = snapshotData['distanceLeft'] as String?;
    _driversPosition = getDataList(snapshotData['driversPosition']);
    _name = snapshotData['name'] as String?;
    _source = snapshotData['source'] as LatLng?;
    _timeLeft = snapshotData['timeLeft'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('orders');

  static Stream<OrdersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => OrdersRecord.fromSnapshot(s));

  static Future<OrdersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => OrdersRecord.fromSnapshot(s));

  static OrdersRecord fromSnapshot(DocumentSnapshot snapshot) => OrdersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static OrdersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      OrdersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'OrdersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is OrdersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createOrdersRecordData({
  LatLng? destination,
  String? distanceLeft,
  String? name,
  LatLng? source,
  String? timeLeft,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'destination': destination,
      'distanceLeft': distanceLeft,
      'name': name,
      'source': source,
      'timeLeft': timeLeft,
    }.withoutNulls,
  );

  return firestoreData;
}

class OrdersRecordDocumentEquality implements Equality<OrdersRecord> {
  const OrdersRecordDocumentEquality();

  @override
  bool equals(OrdersRecord? e1, OrdersRecord? e2) {
    const listEquality = ListEquality();
    return e1?.destination == e2?.destination &&
        e1?.distanceLeft == e2?.distanceLeft &&
        listEquality.equals(e1?.driversPosition, e2?.driversPosition) &&
        e1?.name == e2?.name &&
        e1?.source == e2?.source &&
        e1?.timeLeft == e2?.timeLeft;
  }

  @override
  int hash(OrdersRecord? e) => const ListEquality().hash([
        e?.destination,
        e?.distanceLeft,
        e?.driversPosition,
        e?.name,
        e?.source,
        e?.timeLeft
      ]);

  @override
  bool isValidKey(Object? o) => o is OrdersRecord;
}
