// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class ReporterDataStruct extends FFFirebaseStruct {
  ReporterDataStruct({
    String? name,
    String? role,
    String? workLocation,
    String? email,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _name = name,
        _role = role,
        _workLocation = workLocation,
        _email = email,
        super(firestoreUtilData);

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "role" field.
  String? _role;
  String get role => _role ?? '';
  set role(String? val) => _role = val;

  bool hasRole() => _role != null;

  // "workLocation" field.
  String? _workLocation;
  String get workLocation => _workLocation ?? '';
  set workLocation(String? val) => _workLocation = val;

  bool hasWorkLocation() => _workLocation != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  set email(String? val) => _email = val;

  bool hasEmail() => _email != null;

  static ReporterDataStruct fromMap(Map<String, dynamic> data) =>
      ReporterDataStruct(
        name: data['name'] as String?,
        role: data['role'] as String?,
        workLocation: data['workLocation'] as String?,
        email: data['email'] as String?,
      );

  static ReporterDataStruct? maybeFromMap(dynamic data) => data is Map
      ? ReporterDataStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'name': _name,
        'role': _role,
        'workLocation': _workLocation,
        'email': _email,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'role': serializeParam(
          _role,
          ParamType.String,
        ),
        'workLocation': serializeParam(
          _workLocation,
          ParamType.String,
        ),
        'email': serializeParam(
          _email,
          ParamType.String,
        ),
      }.withoutNulls;

  static ReporterDataStruct fromSerializableMap(Map<String, dynamic> data) =>
      ReporterDataStruct(
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        role: deserializeParam(
          data['role'],
          ParamType.String,
          false,
        ),
        workLocation: deserializeParam(
          data['workLocation'],
          ParamType.String,
          false,
        ),
        email: deserializeParam(
          data['email'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ReporterDataStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ReporterDataStruct &&
        name == other.name &&
        role == other.role &&
        workLocation == other.workLocation &&
        email == other.email;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([name, role, workLocation, email]);
}

ReporterDataStruct createReporterDataStruct({
  String? name,
  String? role,
  String? workLocation,
  String? email,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ReporterDataStruct(
      name: name,
      role: role,
      workLocation: workLocation,
      email: email,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ReporterDataStruct? updateReporterDataStruct(
  ReporterDataStruct? reporterData, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    reporterData
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addReporterDataStructData(
  Map<String, dynamic> firestoreData,
  ReporterDataStruct? reporterData,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (reporterData == null) {
    return;
  }
  if (reporterData.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && reporterData.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final reporterDataData =
      getReporterDataFirestoreData(reporterData, forFieldValue);
  final nestedData =
      reporterDataData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = reporterData.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getReporterDataFirestoreData(
  ReporterDataStruct? reporterData, [
  bool forFieldValue = false,
]) {
  if (reporterData == null) {
    return {};
  }
  final firestoreData = mapToFirestore(reporterData.toMap());

  // Add any Firestore field values
  reporterData.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getReporterDataListFirestoreData(
  List<ReporterDataStruct>? reporterDatas,
) =>
    reporterDatas?.map((e) => getReporterDataFirestoreData(e, true)).toList() ??
    [];
