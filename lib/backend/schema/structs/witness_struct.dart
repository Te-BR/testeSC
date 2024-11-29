// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class WitnessStruct extends FFFirebaseStruct {
  WitnessStruct({
    String? witnessName,
    String? witnessRole,
    String? witnessDescription,
    String? witnessContact,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _witnessName = witnessName,
        _witnessRole = witnessRole,
        _witnessDescription = witnessDescription,
        _witnessContact = witnessContact,
        super(firestoreUtilData);

  // "witnessName" field.
  String? _witnessName;
  String get witnessName => _witnessName ?? '';
  set witnessName(String? val) => _witnessName = val;

  bool hasWitnessName() => _witnessName != null;

  // "witnessRole" field.
  String? _witnessRole;
  String get witnessRole => _witnessRole ?? '';
  set witnessRole(String? val) => _witnessRole = val;

  bool hasWitnessRole() => _witnessRole != null;

  // "witnessDescription" field.
  String? _witnessDescription;
  String get witnessDescription => _witnessDescription ?? '';
  set witnessDescription(String? val) => _witnessDescription = val;

  bool hasWitnessDescription() => _witnessDescription != null;

  // "witnessContact" field.
  String? _witnessContact;
  String get witnessContact => _witnessContact ?? '';
  set witnessContact(String? val) => _witnessContact = val;

  bool hasWitnessContact() => _witnessContact != null;

  static WitnessStruct fromMap(Map<String, dynamic> data) => WitnessStruct(
        witnessName: data['witnessName'] as String?,
        witnessRole: data['witnessRole'] as String?,
        witnessDescription: data['witnessDescription'] as String?,
        witnessContact: data['witnessContact'] as String?,
      );

  static WitnessStruct? maybeFromMap(dynamic data) =>
      data is Map ? WitnessStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'witnessName': _witnessName,
        'witnessRole': _witnessRole,
        'witnessDescription': _witnessDescription,
        'witnessContact': _witnessContact,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'witnessName': serializeParam(
          _witnessName,
          ParamType.String,
        ),
        'witnessRole': serializeParam(
          _witnessRole,
          ParamType.String,
        ),
        'witnessDescription': serializeParam(
          _witnessDescription,
          ParamType.String,
        ),
        'witnessContact': serializeParam(
          _witnessContact,
          ParamType.String,
        ),
      }.withoutNulls;

  static WitnessStruct fromSerializableMap(Map<String, dynamic> data) =>
      WitnessStruct(
        witnessName: deserializeParam(
          data['witnessName'],
          ParamType.String,
          false,
        ),
        witnessRole: deserializeParam(
          data['witnessRole'],
          ParamType.String,
          false,
        ),
        witnessDescription: deserializeParam(
          data['witnessDescription'],
          ParamType.String,
          false,
        ),
        witnessContact: deserializeParam(
          data['witnessContact'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'WitnessStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is WitnessStruct &&
        witnessName == other.witnessName &&
        witnessRole == other.witnessRole &&
        witnessDescription == other.witnessDescription &&
        witnessContact == other.witnessContact;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([witnessName, witnessRole, witnessDescription, witnessContact]);
}

WitnessStruct createWitnessStruct({
  String? witnessName,
  String? witnessRole,
  String? witnessDescription,
  String? witnessContact,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    WitnessStruct(
      witnessName: witnessName,
      witnessRole: witnessRole,
      witnessDescription: witnessDescription,
      witnessContact: witnessContact,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

WitnessStruct? updateWitnessStruct(
  WitnessStruct? witness, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    witness
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addWitnessStructData(
  Map<String, dynamic> firestoreData,
  WitnessStruct? witness,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (witness == null) {
    return;
  }
  if (witness.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && witness.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final witnessData = getWitnessFirestoreData(witness, forFieldValue);
  final nestedData = witnessData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = witness.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getWitnessFirestoreData(
  WitnessStruct? witness, [
  bool forFieldValue = false,
]) {
  if (witness == null) {
    return {};
  }
  final firestoreData = mapToFirestore(witness.toMap());

  // Add any Firestore field values
  witness.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getWitnessListFirestoreData(
  List<WitnessStruct>? witnesss,
) =>
    witnesss?.map((e) => getWitnessFirestoreData(e, true)).toList() ?? [];
