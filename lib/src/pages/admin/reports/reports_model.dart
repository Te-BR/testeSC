import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/src/widgets/report_status_dropdown/report_status_dropdown_widget.dart';
import 'reports_widget.dart' show ReportsWidget;
import 'package:flutter/material.dart';

class ReportsModel extends FlutterFlowModel<ReportsWidget> {
  ///  Local state fields for this page.

  List<ReportRecord> reports = [];
  void addToReports(ReportRecord item) => reports.add(item);
  void removeFromReports(ReportRecord item) => reports.remove(item);
  void removeAtIndexFromReports(int index) => reports.removeAt(index);
  void insertAtIndexInReports(int index, ReportRecord item) =>
      reports.insert(index, item);
  void updateReportsAtIndex(int index, Function(ReportRecord) updateFn) =>
      reports[index] = updateFn(reports[index]);

  List<String> companies = [];
  void addToCompanies(String item) => companies.add(item);
  void removeFromCompanies(String item) => companies.remove(item);
  void removeAtIndexFromCompanies(int index) => companies.removeAt(index);
  void insertAtIndexInCompanies(int index, String item) =>
      companies.insert(index, item);
  void updateCompaniesAtIndex(int index, Function(String) updateFn) =>
      companies[index] = updateFn(companies[index]);

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Firestore Query - Query a collection] action in reports widget.
  List<ReportRecord>? startReports;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // Stores action output result for [Firestore Query - Query a collection] action in DropDown widget.
  List<ReportRecord>? dropdownFilterReports;
  // Stores action output result for [Firestore Query - Query a collection] action in DropDown widget.
  List<ReportRecord>? clearDropdownResults;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Models for reportStatusDropdown dynamic component.
  late FlutterFlowDynamicModels<ReportStatusDropdownModel>
      reportStatusDropdownModels;

  @override
  void initState(BuildContext context) {
    reportStatusDropdownModels =
        FlutterFlowDynamicModels(() => ReportStatusDropdownModel());
  }

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();

    reportStatusDropdownModels.dispose();
  }
}
