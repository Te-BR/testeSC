import '/flutter_flow/flutter_flow_util.dart';
import 'report_password_widget.dart' show ReportPasswordWidget;
import 'package:flutter/material.dart';

class ReportPasswordModel extends FlutterFlowModel<ReportPasswordWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for password widget.
  FocusNode? passwordFocusNode;
  TextEditingController? passwordTextController;
  late bool passwordVisibility;
  String? Function(BuildContext, String?)? passwordTextControllerValidator;
  // State field(s) for repeatPasswordTextfield widget.
  FocusNode? repeatPasswordTextfieldFocusNode;
  TextEditingController? repeatPasswordTextfieldTextController;
  late bool repeatPasswordTextfieldVisibility;
  String? Function(BuildContext, String?)?
      repeatPasswordTextfieldTextControllerValidator;

  @override
  void initState(BuildContext context) {
    passwordVisibility = false;
    repeatPasswordTextfieldVisibility = false;
  }

  @override
  void dispose() {
    passwordFocusNode?.dispose();
    passwordTextController?.dispose();

    repeatPasswordTextfieldFocusNode?.dispose();
    repeatPasswordTextfieldTextController?.dispose();
  }
}
