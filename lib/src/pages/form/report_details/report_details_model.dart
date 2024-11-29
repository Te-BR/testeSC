import '/flutter_flow/flutter_flow_util.dart';
import 'report_details_widget.dart' show ReportDetailsWidget;
import 'package:flutter/material.dart';

class ReportDetailsModel extends FlutterFlowModel<ReportDetailsWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for detailsTextField widget.
  FocusNode? detailsTextFieldFocusNode;
  TextEditingController? detailsTextFieldTextController;
  String? Function(BuildContext, String?)?
      detailsTextFieldTextControllerValidator;
  String? _detailsTextFieldTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'O campo não pode estar vazio.';
    }

    return null;
  }

  // State field(s) for frequencyTextField widget.
  FocusNode? frequencyTextFieldFocusNode;
  TextEditingController? frequencyTextFieldTextController;
  String? Function(BuildContext, String?)?
      frequencyTextFieldTextControllerValidator;
  String? _frequencyTextFieldTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'O campo não pode estar vazio.';
    }

    return null;
  }

  // State field(s) for contextTextField widget.
  FocusNode? contextTextFieldFocusNode;
  TextEditingController? contextTextFieldTextController;
  String? Function(BuildContext, String?)?
      contextTextFieldTextControllerValidator;
  String? _contextTextFieldTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'O campo não pode estar vazio.';
    }

    return null;
  }

  @override
  void initState(BuildContext context) {
    detailsTextFieldTextControllerValidator =
        _detailsTextFieldTextControllerValidator;
    frequencyTextFieldTextControllerValidator =
        _frequencyTextFieldTextControllerValidator;
    contextTextFieldTextControllerValidator =
        _contextTextFieldTextControllerValidator;
  }

  @override
  void dispose() {
    detailsTextFieldFocusNode?.dispose();
    detailsTextFieldTextController?.dispose();

    frequencyTextFieldFocusNode?.dispose();
    frequencyTextFieldTextController?.dispose();

    contextTextFieldFocusNode?.dispose();
    contextTextFieldTextController?.dispose();
  }
}
