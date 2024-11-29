import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'track_report_widget.dart' show TrackReportWidget;
import 'package:flutter/material.dart';

class TrackReportModel extends FlutterFlowModel<TrackReportWidget> {
  ///  Local state fields for this page.

  int? reportStatus;

  PhaseUpdateTimeStruct? phaseDate;
  void updatePhaseDateStruct(Function(PhaseUpdateTimeStruct) updateFn) {
    updateFn(phaseDate ??= PhaseUpdateTimeStruct());
  }

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Firestore Query - Query a collection] action in track_report widget.
  ReportRecord? reportDoc;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
