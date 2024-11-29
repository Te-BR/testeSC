import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'report_status_dropdown_model.dart';
export 'report_status_dropdown_model.dart';

class ReportStatusDropdownWidget extends StatefulWidget {
  const ReportStatusDropdownWidget({
    super.key,
    required this.reportDoc,
  });

  final ReportRecord? reportDoc;

  @override
  State<ReportStatusDropdownWidget> createState() =>
      _ReportStatusDropdownWidgetState();
}

class _ReportStatusDropdownWidgetState
    extends State<ReportStatusDropdownWidget> {
  late ReportStatusDropdownModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ReportStatusDropdownModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
      child: FlutterFlowDropDown<int>(
        controller: _model.dropDownValueController ??= FormFieldController<int>(
          _model.dropDownValue ??= widget.reportDoc?.reportStatus,
        ),
        options: List<int>.from([1, 2, 3, 4, 5]),
        optionLabels: const [
          'Etapa 1 - Recebimento da Denúncia',
          'Etapa 2 - Investigação Preliminar',
          'Etapa 3 - Investigação Detalhada',
          'Etapa 4 - Avaliação e Decisão',
          'Etapa 5 - Aplicação de Sanções e Medidas Corretivas'
        ],
        onChanged: (val) async {
          safeSetState(() => _model.dropDownValue = val);
          await widget.reportDoc!.reference.update(createReportRecordData(
            reportStatus: _model.dropDownValue,
            lastUpdate: getCurrentTimestamp,
          ));
          if (_model.dropDownValue == 1) {
            await widget.reportDoc!.reference.update(createReportRecordData(
              phaseDate: createPhaseUpdateTimeStruct(
                firstPhase: getCurrentTimestamp,
                clearUnsetFields: false,
              ),
            ));
          } else if (_model.dropDownValue == 2) {
            await widget.reportDoc!.reference.update(createReportRecordData(
              phaseDate: createPhaseUpdateTimeStruct(
                secondPhase: getCurrentTimestamp,
                clearUnsetFields: false,
              ),
            ));
          } else if (_model.dropDownValue == 3) {
            await widget.reportDoc!.reference.update(createReportRecordData(
              phaseDate: createPhaseUpdateTimeStruct(
                thirdPhase: getCurrentTimestamp,
                clearUnsetFields: false,
              ),
            ));
          } else if (_model.dropDownValue == 4) {
            await widget.reportDoc!.reference.update(createReportRecordData(
              phaseDate: createPhaseUpdateTimeStruct(
                fourthPhase: getCurrentTimestamp,
                clearUnsetFields: false,
              ),
            ));
          } else if (_model.dropDownValue == 5) {
            await widget.reportDoc!.reference.update(createReportRecordData(
              phaseDate: createPhaseUpdateTimeStruct(
                fifthPhase: getCurrentTimestamp,
                clearUnsetFields: false,
              ),
            ));
          } else {
            return;
          }

          FFAppState().update(() {});
        },
        width: 200.0,
        height: 40.0,
        textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
              fontFamily: 'DM Sans',
              color: FlutterFlowTheme.of(context).primaryBackground,
              fontSize: 12.0,
              letterSpacing: 0.0,
            ),
        icon: Icon(
          Icons.keyboard_arrow_down_rounded,
          color: FlutterFlowTheme.of(context).secondaryText,
          size: 24.0,
        ),
        fillColor: FlutterFlowTheme.of(context).secondaryBackground,
        elevation: 2.0,
        borderColor: Colors.transparent,
        borderWidth: 0.0,
        borderRadius: 8.0,
        margin: const EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
        hidesUnderline: true,
        isOverButton: false,
        isSearchable: false,
        isMultiSelect: false,
      ),
    );
  }
}
