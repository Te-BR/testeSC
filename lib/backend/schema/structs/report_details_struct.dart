// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class ReportDetailsStruct extends FFFirebaseStruct {
  ReportDetailsStruct({
    String? reportText,
    String? reportFrequency,
    String? reportContext,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _reportText = reportText,
        _reportFrequency = reportFrequency,
        _reportContext = reportContext,
        super(firestoreUtilData);

  // "reportText" field.
  String? _reportText;
  String get reportText => _reportText ?? '';
  set reportText(String? val) => _reportText = val;

  bool hasReportText() => _reportText != null;

  // "reportFrequency" field.
  String? _reportFrequency;
  String get reportFrequency => _reportFrequency ?? '';
  set reportFrequency(String? val) => _reportFrequency = val;

  bool hasReportFrequency() => _reportFrequency != null;

  // "reportContext" field.
  String? _reportContext;
  String get reportContext => _reportContext ?? '';
  set reportContext(String? val) => _reportContext = val;

  bool hasReportContext() => _reportContext != null;

  static ReportDetailsStruct fromMap(Map<String, dynamic> data) =>
      ReportDetailsStruct(
        reportText: data['reportText'] as String?,
        reportFrequency: data['reportFrequency'] as String?,
        reportContext: data['reportContext'] as String?,
      );

  static ReportDetailsStruct? maybeFromMap(dynamic data) => data is Map
      ? ReportDetailsStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'reportText': _reportText,
        'reportFrequency': _reportFrequency,
        'reportContext': _reportContext,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'reportText': serializeParam(
          _reportText,
          ParamType.String,
        ),
        'reportFrequency': serializeParam(
          _reportFrequency,
          ParamType.String,
        ),
        'reportContext': serializeParam(
          _reportContext,
          ParamType.String,
        ),
      }.withoutNulls;

  static ReportDetailsStruct fromSerializableMap(Map<String, dynamic> data) =>
      ReportDetailsStruct(
        reportText: deserializeParam(
          data['reportText'],
          ParamType.String,
          false,
        ),
        reportFrequency: deserializeParam(
          data['reportFrequency'],
          ParamType.String,
          false,
        ),
        reportContext: deserializeParam(
          data['reportContext'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ReportDetailsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ReportDetailsStruct &&
        reportText == other.reportText &&
        reportFrequency == other.reportFrequency &&
        reportContext == other.reportContext;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([reportText, reportFrequency, reportContext]);
}

ReportDetailsStruct createReportDetailsStruct({
  String? reportText,
  String? reportFrequency,
  String? reportContext,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ReportDetailsStruct(
      reportText: reportText,
      reportFrequency: reportFrequency,
      reportContext: reportContext,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ReportDetailsStruct? updateReportDetailsStruct(
  ReportDetailsStruct? reportDetails, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    reportDetails
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addReportDetailsStructData(
  Map<String, dynamic> firestoreData,
  ReportDetailsStruct? reportDetails,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (reportDetails == null) {
    return;
  }
  if (reportDetails.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && reportDetails.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final reportDetailsData =
      getReportDetailsFirestoreData(reportDetails, forFieldValue);
  final nestedData =
      reportDetailsData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = reportDetails.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getReportDetailsFirestoreData(
  ReportDetailsStruct? reportDetails, [
  bool forFieldValue = false,
]) {
  if (reportDetails == null) {
    return {};
  }
  final firestoreData = mapToFirestore(reportDetails.toMap());

  // Add any Firestore field values
  reportDetails.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getReportDetailsListFirestoreData(
  List<ReportDetailsStruct>? reportDetailss,
) =>
    reportDetailss
        ?.map((e) => getReportDetailsFirestoreData(e, true))
        .toList() ??
    [];
