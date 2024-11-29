import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'find_report_widget.dart' show FindReportWidget;
import 'package:flutter/material.dart';

class FindReportModel extends FlutterFlowModel<FindReportWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for codeTextField widget.
  FocusNode? codeTextFieldFocusNode;
  TextEditingController? codeTextFieldTextController;
  String? Function(BuildContext, String?)? codeTextFieldTextControllerValidator;
  // State field(s) for passwordTextField widget.
  FocusNode? passwordTextFieldFocusNode;
  TextEditingController? passwordTextFieldTextController;
  late bool passwordTextFieldVisibility;
  String? Function(BuildContext, String?)?
      passwordTextFieldTextControllerValidator;
  // Stores action output result for [Firestore Query - Query a collection] action in Container widget.
  ReportRecord? reportDoc;

  @override
  void initState(BuildContext context) {
    passwordTextFieldVisibility = false;
  }

  @override
  void dispose() {
    codeTextFieldFocusNode?.dispose();
    codeTextFieldTextController?.dispose();

    passwordTextFieldFocusNode?.dispose();
    passwordTextFieldTextController?.dispose();
  }
}
