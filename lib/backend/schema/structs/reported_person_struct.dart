// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class ReportedPersonStruct extends FFFirebaseStruct {
  ReportedPersonStruct({
    String? reportedName,
    String? reportedRole,
    String? reportedWorkLocation,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _reportedName = reportedName,
        _reportedRole = reportedRole,
        _reportedWorkLocation = reportedWorkLocation,
        super(firestoreUtilData);

  // "reportedName" field.
  String? _reportedName;
  String get reportedName => _reportedName ?? '';
  set reportedName(String? val) => _reportedName = val;

  bool hasReportedName() => _reportedName != null;

  // "reportedRole" field.
  String? _reportedRole;
  String get reportedRole => _reportedRole ?? '';
  set reportedRole(String? val) => _reportedRole = val;

  bool hasReportedRole() => _reportedRole != null;

  // "reportedWorkLocation" field.
  String? _reportedWorkLocation;
  String get reportedWorkLocation => _reportedWorkLocation ?? '';
  set reportedWorkLocation(String? val) => _reportedWorkLocation = val;

  bool hasReportedWorkLocation() => _reportedWorkLocation != null;

  static ReportedPersonStruct fromMap(Map<String, dynamic> data) =>
      ReportedPersonStruct(
        reportedName: data['reportedName'] as String?,
        reportedRole: data['reportedRole'] as String?,
        reportedWorkLocation: data['reportedWorkLocation'] as String?,
      );

  static ReportedPersonStruct? maybeFromMap(dynamic data) => data is Map
      ? ReportedPersonStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'reportedName': _reportedName,
        'reportedRole': _reportedRole,
        'reportedWorkLocation': _reportedWorkLocation,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'reportedName': serializeParam(
          _reportedName,
          ParamType.String,
        ),
        'reportedRole': serializeParam(
          _reportedRole,
          ParamType.String,
        ),
        'reportedWorkLocation': serializeParam(
          _reportedWorkLocation,
          ParamType.String,
        ),
      }.withoutNulls;

  static ReportedPersonStruct fromSerializableMap(Map<String, dynamic> data) =>
      ReportedPersonStruct(
        reportedName: deserializeParam(
          data['reportedName'],
          ParamType.String,
          false,
        ),
        reportedRole: deserializeParam(
          data['reportedRole'],
          ParamType.String,
          false,
        ),
        reportedWorkLocation: deserializeParam(
          data['reportedWorkLocation'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ReportedPersonStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ReportedPersonStruct &&
        reportedName == other.reportedName &&
        reportedRole == other.reportedRole &&
        reportedWorkLocation == other.reportedWorkLocation;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([reportedName, reportedRole, reportedWorkLocation]);
}

ReportedPersonStruct createReportedPersonStruct({
  String? reportedName,
  String? reportedRole,
  String? reportedWorkLocation,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ReportedPersonStruct(
      reportedName: reportedName,
      reportedRole: reportedRole,
      reportedWorkLocation: reportedWorkLocation,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ReportedPersonStruct? updateReportedPersonStruct(
  ReportedPersonStruct? reportedPerson, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    reportedPerson
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addReportedPersonStructData(
  Map<String, dynamic> firestoreData,
  ReportedPersonStruct? reportedPerson,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (reportedPerson == null) {
    return;
  }
  if (reportedPerson.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && reportedPerson.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final reportedPersonData =
      getReportedPersonFirestoreData(reportedPerson, forFieldValue);
  final nestedData =
      reportedPersonData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = reportedPerson.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getReportedPersonFirestoreData(
  ReportedPersonStruct? reportedPerson, [
  bool forFieldValue = false,
]) {
  if (reportedPerson == null) {
    return {};
  }
  final firestoreData = mapToFirestore(reportedPerson.toMap());

  // Add any Firestore field values
  reportedPerson.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getReportedPersonListFirestoreData(
  List<ReportedPersonStruct>? reportedPersons,
) =>
    reportedPersons
        ?.map((e) => getReportedPersonFirestoreData(e, true))
        .toList() ??
    [];
