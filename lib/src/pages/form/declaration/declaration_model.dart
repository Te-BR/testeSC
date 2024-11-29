import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'declaration_widget.dart' show DeclarationWidget;
import 'package:flutter/material.dart';

class DeclarationModel extends FlutterFlowModel<DeclarationWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for Checkbox widget.
  bool? checkboxValue;
  // Stores action output result for [Backend Call - Create Document] action in Container widget.
  ReportRecord? createdReportDoc;
  // Stores action output result for [Backend Call - Read Document] action in Container widget.
  ReportRecord? createdDoc;
  // Stores action output result for [Backend Call - API (sendFirebaseEmail)] action in Container widget.
  ApiCallResponse? sentEmail;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
