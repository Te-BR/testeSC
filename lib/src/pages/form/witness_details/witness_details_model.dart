import '/flutter_flow/flutter_flow_util.dart';
import 'witness_details_widget.dart' show WitnessDetailsWidget;
import 'package:flutter/material.dart';

class WitnessDetailsModel extends FlutterFlowModel<WitnessDetailsWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for nameTextField widget.
  FocusNode? nameTextFieldFocusNode;
  TextEditingController? nameTextFieldTextController;
  String? Function(BuildContext, String?)? nameTextFieldTextControllerValidator;
  String? _nameTextFieldTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'O campo não pode estar vazio.';
    }

    return null;
  }

  // State field(s) for roleTextField widget.
  FocusNode? roleTextFieldFocusNode;
  TextEditingController? roleTextFieldTextController;
  String? Function(BuildContext, String?)? roleTextFieldTextControllerValidator;
  String? _roleTextFieldTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'O campo não pode estar vazio.';
    }

    return null;
  }

  // State field(s) for contactTextField widget.
  FocusNode? contactTextFieldFocusNode;
  TextEditingController? contactTextFieldTextController;
  String? Function(BuildContext, String?)?
      contactTextFieldTextControllerValidator;
  // State field(s) for descriptionTextField widget.
  FocusNode? descriptionTextFieldFocusNode;
  TextEditingController? descriptionTextFieldTextController;
  String? Function(BuildContext, String?)?
      descriptionTextFieldTextControllerValidator;
  String? _descriptionTextFieldTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'O campo não pode estar vazio.';
    }

    return null;
  }

  @override
  void initState(BuildContext context) {
    nameTextFieldTextControllerValidator =
        _nameTextFieldTextControllerValidator;
    roleTextFieldTextControllerValidator =
        _roleTextFieldTextControllerValidator;
    descriptionTextFieldTextControllerValidator =
        _descriptionTextFieldTextControllerValidator;
  }

  @override
  void dispose() {
    nameTextFieldFocusNode?.dispose();
    nameTextFieldTextController?.dispose();

    roleTextFieldFocusNode?.dispose();
    roleTextFieldTextController?.dispose();

    contactTextFieldFocusNode?.dispose();
    contactTextFieldTextController?.dispose();

    descriptionTextFieldFocusNode?.dispose();
    descriptionTextFieldTextController?.dispose();
  }
}
