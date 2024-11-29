import '/flutter_flow/flutter_flow_util.dart';
import 'location_and_date_widget.dart' show LocationAndDateWidget;
import 'package:flutter/material.dart';

class LocationAndDateModel extends FlutterFlowModel<LocationAndDateWidget> {
  ///  Local state fields for this page.

  String? location;

  bool userLocation = true;

  bool userRightNow = true;

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for locationTextfield widget.
  FocusNode? locationTextfieldFocusNode;
  TextEditingController? locationTextfieldTextController;
  String? Function(BuildContext, String?)?
      locationTextfieldTextControllerValidator;
  String? _locationTextfieldTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'O campo não pode estar vazio.';
    }

    return null;
  }

  DateTime? datePicked;

  @override
  void initState(BuildContext context) {
    locationTextfieldTextControllerValidator =
        _locationTextfieldTextControllerValidator;
  }

  @override
  void dispose() {
    locationTextfieldFocusNode?.dispose();
    locationTextfieldTextController?.dispose();
  }
}
