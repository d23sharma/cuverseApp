// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class HospitalsStruct extends FFFirebaseStruct {
  HospitalsStruct({
    List<LatLng>? hospital,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _hospital = hospital,
        super(firestoreUtilData);

  // "hospital" field.
  List<LatLng>? _hospital;
  List<LatLng> get hospital => _hospital ?? const [];
  set hospital(List<LatLng>? val) => _hospital = val;
  void updateHospital(Function(List<LatLng>) updateFn) =>
      updateFn(_hospital ??= []);
  bool hasHospital() => _hospital != null;

  static HospitalsStruct fromMap(Map<String, dynamic> data) => HospitalsStruct(
        hospital: getDataList(data['hospital']),
      );

  static HospitalsStruct? maybeFromMap(dynamic data) => data is Map
      ? HospitalsStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'hospital': _hospital,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'hospital': serializeParam(
          _hospital,
          ParamType.LatLng,
          true,
        ),
      }.withoutNulls;

  static HospitalsStruct fromSerializableMap(Map<String, dynamic> data) =>
      HospitalsStruct(
        hospital: deserializeParam<LatLng>(
          data['hospital'],
          ParamType.LatLng,
          true,
        ),
      );

  @override
  String toString() => 'HospitalsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is HospitalsStruct &&
        listEquality.equals(hospital, other.hospital);
  }

  @override
  int get hashCode => const ListEquality().hash([hospital]);
}

HospitalsStruct createHospitalsStruct({
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    HospitalsStruct(
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

HospitalsStruct? updateHospitalsStruct(
  HospitalsStruct? hospitals, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    hospitals
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addHospitalsStructData(
  Map<String, dynamic> firestoreData,
  HospitalsStruct? hospitals,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (hospitals == null) {
    return;
  }
  if (hospitals.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && hospitals.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final hospitalsData = getHospitalsFirestoreData(hospitals, forFieldValue);
  final nestedData = hospitalsData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = hospitals.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getHospitalsFirestoreData(
  HospitalsStruct? hospitals, [
  bool forFieldValue = false,
]) {
  if (hospitals == null) {
    return {};
  }
  final firestoreData = mapToFirestore(hospitals.toMap());

  // Add any Firestore field values
  hospitals.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getHospitalsListFirestoreData(
  List<HospitalsStruct>? hospitalss,
) =>
    hospitalss?.map((e) => getHospitalsFirestoreData(e, true)).toList() ?? [];
