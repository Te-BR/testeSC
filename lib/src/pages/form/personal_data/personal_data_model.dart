import '/flutter_flow/flutter_flow_util.dart';
import 'personal_data_widget.dart' show PersonalDataWidget;
import 'package:flutter/material.dart';

class PersonalDataModel extends FlutterFlowModel<PersonalDataWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for nameTextfield widget.
  FocusNode? nameTextfieldFocusNode;
  TextEditingController? nameTextfieldTextController;
  String? Function(BuildContext, String?)? nameTextfieldTextControllerValidator;
  String? _nameTextfieldTextControllerValidator(
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

  // State field(s) for workLocationTextField widget.
  FocusNode? workLocationTextFieldFocusNode;
  TextEditingController? workLocationTextFieldTextController;
  String? Function(BuildContext, String?)?
      workLocationTextFieldTextControllerValidator;
  String? _workLocationTextFieldTextControllerValidator(
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
  String? _contactTextFieldTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'O campo não pode estar vazio.';
    }

    return null;
  }

  @override
  void initState(BuildContext context) {
    nameTextfieldTextControllerValidator =
        _nameTextfieldTextControllerValidator;
    roleTextFieldTextControllerValidator =
        _roleTextFieldTextControllerValidator;
    workLocationTextFieldTextControllerValidator =
        _workLocationTextFieldTextControllerValidator;
    contactTextFieldTextControllerValidator =
        _contactTextFieldTextControllerValidator;
  }

  @override
  void dispose() {
    nameTextfieldFocusNode?.dispose();
    nameTextfieldTextController?.dispose();

    roleTextFieldFocusNode?.dispose();
    roleTextFieldTextController?.dispose();

    workLocationTextFieldFocusNode?.dispose();
    workLocationTextFieldTextController?.dispose();

    contactTextFieldFocusNode?.dispose();
    contactTextFieldTextController?.dispose();
  }
}
