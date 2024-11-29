import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'add_documents_widget.dart' show AddDocumentsWidget;
import 'package:flutter/material.dart';

class AddDocumentsModel extends FlutterFlowModel<AddDocumentsWidget> {
  ///  Local state fields for this page.

  List<DocumentStruct> allDocuments = [];
  void addToAllDocuments(DocumentStruct item) => allDocuments.add(item);
  void removeFromAllDocuments(DocumentStruct item) => allDocuments.remove(item);
  void removeAtIndexFromAllDocuments(int index) => allDocuments.removeAt(index);
  void insertAtIndexInAllDocuments(int index, DocumentStruct item) =>
      allDocuments.insert(index, item);
  void updateAllDocumentsAtIndex(
          int index, Function(DocumentStruct) updateFn) =>
      allDocuments[index] = updateFn(allDocuments[index]);

  int repeats = 0;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - Read Document] action in Container widget.
  ReportRecord? reportDoc;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
