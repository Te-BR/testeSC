import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';
import 'track_report_model.dart';
export 'track_report_model.dart';

class TrackReportWidget extends StatefulWidget {
  /// #595D62
  const TrackReportWidget({
    super.key,
    required this.reportCode,
    required this.reportStatus,
  });

  final String? reportCode;
  final int? reportStatus;

  @override
  State<TrackReportWidget> createState() => _TrackReportWidgetState();
}

class _TrackReportWidgetState extends State<TrackReportWidget> {
  late TrackReportModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TrackReportModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.reportDoc = await queryReportRecordOnce(
        queryBuilder: (reportRecord) => reportRecord.where(
          'reportCode',
          isEqualTo: widget.reportCode,
        ),
        singleRecord: true,
      ).then((s) => s.firstOrNull);
      _model.phaseDate = _model.reportDoc?.phaseDate;
      _model.reportStatus = _model.reportDoc?.reportStatus;
      safeSetState(() {});

      FFAppState().update(() {});
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(24.0, 60.0, 24.0, 25.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      if (responsiveVisibility(
                        context: context,
                        phone: false,
                        tablet: false,
                        tabletLandscape: false,
                        desktop: false,
                      ))
                        FlutterFlowIconButton(
                          borderRadius: 8.0,
                          buttonSize: 40.0,
                          fillColor: const Color(0xFF171717),
                          icon: Icon(
                            Icons.menu,
                            color: FlutterFlowTheme.of(context).info,
                            size: 24.0,
                          ),
                          onPressed: () async {
                            scaffoldKey.currentState!.openDrawer();
                          },
                        ),
                    ],
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Align(
                          alignment: const AlignmentDirectional(-1.0, 0.0),
                          child: Text(
                            'Acompanhe\nsua denúncia',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'DM Sans',
                                  color: Colors.white,
                                  fontSize: 23.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w600,
                                ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 20.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              5.0, 10.0, 0.0, 0.0),
                          child: Text(
                            valueOrDefault<String>(
                              widget.reportCode,
                              '[reportCode]',
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'DM Sans',
                                  color: const Color(0xFF038657),
                                  fontSize: 29.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.bold,
                                ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Icon(
                            Icons.check_circle,
                            color: Color(0xFF038657),
                            size: 24.0,
                          ),
                          Container(
                            height: 50.0,
                            decoration: BoxDecoration(
                              color: const Color(0xFF595D62),
                              border: Border.all(
                                color: const Color(0xFF595D62),
                                width: 2.0,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 0.0, 0.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text(
                                  'Recebimento da Denúncia',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'DM Sans',
                                        letterSpacing: 0.0,
                                      ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 5.0, 0.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Text(
                                    valueOrDefault<String>(
                                      _model.phaseDate?.firstPhase != null
                                          ? dateTimeFormat(
                                              "d/M H:mm",
                                              _model.phaseDate?.firstPhase,
                                              locale:
                                                  FFLocalizations.of(context)
                                                      .languageCode,
                                            )
                                          : 'Sem atualização',
                                      'Sem atualização',
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'DM Sans',
                                          color: const Color(0xFF595D62),
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Builder(
                            builder: (context) {
                              if (!((_model.reportStatus == 2) ||
                                  (_model.reportStatus == 3) ||
                                  (_model.reportStatus == 4) ||
                                  (_model.reportStatus == 5))) {
                                return const Icon(
                                  Icons.circle_outlined,
                                  color: Color(0xFF595D62),
                                  size: 24.0,
                                );
                              } else {
                                return const Icon(
                                  Icons.check_circle,
                                  color: Color(0xFF038657),
                                  size: 24.0,
                                );
                              }
                            },
                          ),
                          Container(
                            height: 50.0,
                            decoration: BoxDecoration(
                              color: const Color(0xFF595D62),
                              border: Border.all(
                                color: const Color(0xFF595D62),
                                width: 2.0,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 0.0, 0.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text(
                                  'investigação Preliminar',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'DM Sans',
                                        letterSpacing: 0.0,
                                      ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 5.0, 0.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Text(
                                    valueOrDefault<String>(
                                      _model.phaseDate?.secondPhase != null
                                          ? dateTimeFormat(
                                              "d/M H:mm",
                                              _model.phaseDate?.secondPhase,
                                              locale:
                                                  FFLocalizations.of(context)
                                                      .languageCode,
                                            )
                                          : 'Sem atualização',
                                      'Sem atualização',
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'DM Sans',
                                          color: const Color(0xFF595D62),
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Builder(
                            builder: (context) {
                              if (!((_model.reportStatus == 3) ||
                                  (_model.reportStatus == 4) ||
                                  (_model.reportStatus == 5))) {
                                return const Icon(
                                  Icons.circle_outlined,
                                  color: Color(0xFF595D62),
                                  size: 24.0,
                                );
                              } else {
                                return const Icon(
                                  Icons.check_circle,
                                  color: Color(0xFF038657),
                                  size: 24.0,
                                );
                              }
                            },
                          ),
                          Container(
                            height: 50.0,
                            decoration: BoxDecoration(
                              color: const Color(0xFF595D62),
                              border: Border.all(
                                color: const Color(0xFF595D62),
                                width: 2.0,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 0.0, 0.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text(
                                  'Investigação Detalhada',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'DM Sans',
                                        letterSpacing: 0.0,
                                      ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 5.0, 0.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Text(
                                    valueOrDefault<String>(
                                      _model.phaseDate?.thirdPhase != null
                                          ? dateTimeFormat(
                                              "d/M H:mm",
                                              _model.phaseDate?.thirdPhase,
                                              locale:
                                                  FFLocalizations.of(context)
                                                      .languageCode,
                                            )
                                          : 'Sem atualização',
                                      'Sem atualização',
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'DM Sans',
                                          color: const Color(0xFF595D62),
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Builder(
                            builder: (context) {
                              if (!((_model.reportStatus == 4) ||
                                  (_model.reportStatus == 5))) {
                                return const Icon(
                                  Icons.circle_outlined,
                                  color: Color(0xFF595D62),
                                  size: 24.0,
                                );
                              } else {
                                return const Icon(
                                  Icons.check_circle,
                                  color: Color(0xFF038657),
                                  size: 24.0,
                                );
                              }
                            },
                          ),
                          Container(
                            height: 50.0,
                            decoration: BoxDecoration(
                              color: const Color(0xFF595D62),
                              border: Border.all(
                                color: const Color(0xFF595D62),
                                width: 2.0,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 0.0, 0.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text(
                                  'Avaliação e Decisão',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'DM Sans',
                                        letterSpacing: 0.0,
                                      ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 5.0, 0.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Text(
                                    valueOrDefault<String>(
                                      _model.phaseDate?.fourthPhase != null
                                          ? dateTimeFormat(
                                              "d/M H:mm",
                                              _model.phaseDate?.fourthPhase,
                                              locale:
                                                  FFLocalizations.of(context)
                                                      .languageCode,
                                            )
                                          : 'Sem atualização',
                                      'Sem atualização',
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'DM Sans',
                                          color: const Color(0xFF595D62),
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Builder(
                            builder: (context) {
                              if (_model.reportStatus != 5) {
                                return const Icon(
                                  Icons.circle_outlined,
                                  color: Color(0xFF595D62),
                                  size: 24.0,
                                );
                              } else {
                                return const Icon(
                                  Icons.check_circle,
                                  color: Color(0xFF038657),
                                  size: 24.0,
                                );
                              }
                            },
                          ),
                        ],
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 0.0, 0.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text(
                                  'Aplicação de Sanções e Medidas Corretivas',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'DM Sans',
                                        letterSpacing: 0.0,
                                      ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 5.0, 0.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Text(
                                    valueOrDefault<String>(
                                      _model.phaseDate?.fifthPhase != null
                                          ? dateTimeFormat(
                                              "d/M H:mm",
                                              _model.phaseDate?.fifthPhase,
                                              locale:
                                                  FFLocalizations.of(context)
                                                      .languageCode,
                                            )
                                          : 'Sem atualização',
                                      'Sem atualização',
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'DM Sans',
                                          color: const Color(0xFF595D62),
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
