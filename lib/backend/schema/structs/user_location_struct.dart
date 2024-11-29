// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class UserLocationStruct extends FFFirebaseStruct {
  UserLocationStruct({
    String? address,
    String? postalCode,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _address = address,
        _postalCode = postalCode,
        super(firestoreUtilData);

  // "address" field.
  String? _address;
  String get address => _address ?? '';
  set address(String? val) => _address = val;

  bool hasAddress() => _address != null;

  // "postalCode" field.
  String? _postalCode;
  String get postalCode => _postalCode ?? '';
  set postalCode(String? val) => _postalCode = val;

  bool hasPostalCode() => _postalCode != null;

  static UserLocationStruct fromMap(Map<String, dynamic> data) =>
      UserLocationStruct(
        address: data['address'] as String?,
        postalCode: data['postalCode'] as String?,
      );

  static UserLocationStruct? maybeFromMap(dynamic data) => data is Map
      ? UserLocationStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'address': _address,
        'postalCode': _postalCode,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'address': serializeParam(
          _address,
          ParamType.String,
        ),
        'postalCode': serializeParam(
          _postalCode,
          ParamType.String,
        ),
      }.withoutNulls;

  static UserLocationStruct fromSerializableMap(Map<String, dynamic> data) =>
      UserLocationStruct(
        address: deserializeParam(
          data['address'],
          ParamType.String,
          false,
        ),
        postalCode: deserializeParam(
          data['postalCode'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'UserLocationStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is UserLocationStruct &&
        address == other.address &&
        postalCode == other.postalCode;
  }

  @override
  int get hashCode => const ListEquality().hash([address, postalCode]);
}

UserLocationStruct createUserLocationStruct({
  String? address,
  String? postalCode,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    UserLocationStruct(
      address: address,
      postalCode: postalCode,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

UserLocationStruct? updateUserLocationStruct(
  UserLocationStruct? userLocation, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    userLocation
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addUserLocationStructData(
  Map<String, dynamic> firestoreData,
  UserLocationStruct? userLocation,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (userLocation == null) {
    return;
  }
  if (userLocation.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && userLocation.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final userLocationData =
      getUserLocationFirestoreData(userLocation, forFieldValue);
  final nestedData =
      userLocationData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = userLocation.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getUserLocationFirestoreData(
  UserLocationStruct? userLocation, [
  bool forFieldValue = false,
]) {
  if (userLocation == null) {
    return {};
  }
  final firestoreData = mapToFirestore(userLocation.toMap());

  // Add any Firestore field values
  userLocation.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getUserLocationListFirestoreData(
  List<UserLocationStruct>? userLocations,
) =>
    userLocations?.map((e) => getUserLocationFirestoreData(e, true)).toList() ??
    [];
