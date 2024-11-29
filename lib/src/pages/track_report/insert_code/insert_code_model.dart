import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'insert_code_widget.dart' show InsertCodeWidget;
import 'package:flutter/material.dart';

class InsertCodeModel extends FlutterFlowModel<InsertCodeWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Stores action output result for [Firestore Query - Query a collection] action in Container widget.
  ReportRecord? reportDoc;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
