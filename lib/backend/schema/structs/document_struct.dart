// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class DocumentStruct extends FFFirebaseStruct {
  DocumentStruct({
    String? documentName,
    String? documentLink,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _documentName = documentName,
        _documentLink = documentLink,
        super(firestoreUtilData);

  // "documentName" field.
  String? _documentName;
  String get documentName => _documentName ?? '';
  set documentName(String? val) => _documentName = val;

  bool hasDocumentName() => _documentName != null;

  // "documentLink" field.
  String? _documentLink;
  String get documentLink => _documentLink ?? '';
  set documentLink(String? val) => _documentLink = val;

  bool hasDocumentLink() => _documentLink != null;

  static DocumentStruct fromMap(Map<String, dynamic> data) => DocumentStruct(
        documentName: data['documentName'] as String?,
        documentLink: data['documentLink'] as String?,
      );

  static DocumentStruct? maybeFromMap(dynamic data) =>
      data is Map ? DocumentStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'documentName': _documentName,
        'documentLink': _documentLink,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'documentName': serializeParam(
          _documentName,
          ParamType.String,
        ),
        'documentLink': serializeParam(
          _documentLink,
          ParamType.String,
        ),
      }.withoutNulls;

  static DocumentStruct fromSerializableMap(Map<String, dynamic> data) =>
      DocumentStruct(
        documentName: deserializeParam(
          data['documentName'],
          ParamType.String,
          false,
        ),
        documentLink: deserializeParam(
          data['documentLink'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'DocumentStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DocumentStruct &&
        documentName == other.documentName &&
        documentLink == other.documentLink;
  }

  @override
  int get hashCode => const ListEquality().hash([documentName, documentLink]);
}

DocumentStruct createDocumentStruct({
  String? documentName,
  String? documentLink,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    DocumentStruct(
      documentName: documentName,
      documentLink: documentLink,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

DocumentStruct? updateDocumentStruct(
  DocumentStruct? document, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    document
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addDocumentStructData(
  Map<String, dynamic> firestoreData,
  DocumentStruct? document,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (document == null) {
    return;
  }
  if (document.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && document.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final documentData = getDocumentFirestoreData(document, forFieldValue);
  final nestedData = documentData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = document.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getDocumentFirestoreData(
  DocumentStruct? document, [
  bool forFieldValue = false,
]) {
  if (document == null) {
    return {};
  }
  final firestoreData = mapToFirestore(document.toMap());

  // Add any Firestore field values
  document.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getDocumentListFirestoreData(
  List<DocumentStruct>? documents,
) =>
    documents?.map((e) => getDocumentFirestoreData(e, true)).toList() ?? [];
