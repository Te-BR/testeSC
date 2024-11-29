import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/src/shared/info_modal/info_modal_widget.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'declaration_model.dart';
export 'declaration_model.dart';

class DeclarationWidget extends StatefulWidget {
  /// #595D62
  const DeclarationWidget({super.key});

  @override
  State<DeclarationWidget> createState() => _DeclarationWidgetState();
}

class _DeclarationWidgetState extends State<DeclarationWidget> {
  late DeclarationModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DeclarationModel());

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
        body: SafeArea(
          top: true,
          child: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(24.0, 25.0, 24.0, 25.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: MediaQuery.sizeOf(context).width * 0.9,
                  decoration: const BoxDecoration(),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          context.safePop();
                        },
                        child: const Icon(
                          Icons.chevron_left,
                          color: Colors.white,
                          size: 20.0,
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(6.0, 0.0, 0.0, 0.0),
                        child: Text(
                          'Voltar',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'DM Sans',
                                    color: Colors.white,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: MediaQuery.sizeOf(context).width * 0.9,
                  decoration: const BoxDecoration(),
                  child: Text(
                    'Declaração de veracidade',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'DM Sans',
                          color: Colors.white,
                          fontSize: 23.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                ),
                Container(
                  width: MediaQuery.sizeOf(context).width * 0.89,
                  decoration: const BoxDecoration(),
                  child: Align(
                    alignment: const AlignmentDirectional(0.0, 0.0),
                    child: Text(
                      'Declaro, por meio deste documento, que todas as informações fornecidas nesta denúncia são, de acordo com meu conhecimento e crença, verdadeiras, precisas e completas. Estou ciente de que essas informações poderão ser utilizadas para iniciar e conduzir investigações de compliance internas, conforme os procedimentos estabelecidos pela organização. Reconheço que fornecer informações falsas ou enganosas pode prejudicar a investigação e resultar em consequências apropriadas, de acordo com as políticas internas e a legislação aplicável.',
                      textAlign: TextAlign.justify,
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'DM Sans',
                            fontSize: 14.0,
                            letterSpacing: 0.0,
                          ),
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.sizeOf(context).width * 0.9,
                  decoration: const BoxDecoration(),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Theme(
                        data: ThemeData(
                          checkboxTheme: CheckboxThemeData(
                            visualDensity: VisualDensity.compact,
                            materialTapTargetSize:
                                MaterialTapTargetSize.shrinkWrap,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4.0),
                            ),
                          ),
                          unselectedWidgetColor: const Color(0x3EFFFFFF),
                        ),
                        child: Checkbox(
                          value: _model.checkboxValue ??= false,
                          onChanged: (newValue) async {
                            safeSetState(
                                () => _model.checkboxValue = newValue!);
                          },
                          side: const BorderSide(
                            width: 2,
                            color: Color(0x3EFFFFFF),
                          ),
                          activeColor: Colors.white,
                          checkColor:
                              FlutterFlowTheme.of(context).primaryBackground,
                        ),
                      ),
                      Container(
                        width: MediaQuery.sizeOf(context).width * 0.79,
                        decoration: const BoxDecoration(),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              5.0, 0.0, 0.0, 0.0),
                          child: Text(
                            'Declaração de que as informações fornecidas são verdadeiras e precisas.',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'DM Sans',
                                  letterSpacing: 0.0,
                                ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Flexible(
                  child: Align(
                    alignment: const AlignmentDirectional(0.0, 1.0),
                    child: Builder(
                      builder: (context) => InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          if (_model.checkboxValue == true) {
                            var reportRecordReference1 =
                                ReportRecord.collection.doc();
                            await reportRecordReference1.set({
                              ...createReportRecordData(
                                userData: updateReporterDataStruct(
                                  FFAppState().reporterData,
                                  clearUnsetFields: false,
                                  create: true,
                                ),
                                reportTime: FFAppState().reportTime,
                                reportLocation: FFAppState().reportLocation,
                                reportType: FFAppState().reportType,
                                reportDetails: updateReportDetailsStruct(
                                  FFAppState().reportDetails,
                                  clearUnsetFields: false,
                                  create: true,
                                ),
                                reportedPerson: updateReportedPersonStruct(
                                  FFAppState().reportedPerson,
                                  clearUnsetFields: false,
                                  create: true,
                                ),
                                reportCode: functions.randomString(),
                                lastUpdate: getCurrentTimestamp,
                                reportStatus: 1,
                                reportCompany: FFAppState().reportCompany,
                                phaseDate: updatePhaseUpdateTimeStruct(
                                  PhaseUpdateTimeStruct(
                                    firstPhase: getCurrentTimestamp,
                                  ),
                                  clearUnsetFields: false,
                                  create: true,
                                ),
                              ),
                              ...mapToFirestore(
                                {
                                  'witnessList': getWitnessListFirestoreData(
                                    FFAppState().witnessList,
                                  ),
                                  'documentList': getDocumentListFirestoreData(
                                    FFAppState().documents,
                                  ),
                                },
                              ),
                            });
                            _model.createdReportDoc =
                                ReportRecord.getDocumentFromData({
                              ...createReportRecordData(
                                userData: updateReporterDataStruct(
                                  FFAppState().reporterData,
                                  clearUnsetFields: false,
                                  create: true,
                                ),
                                reportTime: FFAppState().reportTime,
                                reportLocation: FFAppState().reportLocation,
                                reportType: FFAppState().reportType,
                                reportDetails: updateReportDetailsStruct(
                                  FFAppState().reportDetails,
                                  clearUnsetFields: false,
                                  create: true,
                                ),
                                reportedPerson: updateReportedPersonStruct(
                                  FFAppState().reportedPerson,
                                  clearUnsetFields: false,
                                  create: true,
                                ),
                                reportCode: functions.randomString(),
                                lastUpdate: getCurrentTimestamp,
                                reportStatus: 1,
                                reportCompany: FFAppState().reportCompany,
                                phaseDate: updatePhaseUpdateTimeStruct(
                                  PhaseUpdateTimeStruct(
                                    firstPhase: getCurrentTimestamp,
                                  ),
                                  clearUnsetFields: false,
                                  create: true,
                                ),
                              ),
                              ...mapToFirestore(
                                {
                                  'witnessList': getWitnessListFirestoreData(
                                    FFAppState().witnessList,
                                  ),
                                  'documentList': getDocumentListFirestoreData(
                                    FFAppState().documents,
                                  ),
                                },
                              ),
                            }, reportRecordReference1);
                            if (FFAppState().reportPassword != '') {
                              await _model.createdReportDoc!.reference
                                  .update(createReportRecordData(
                                password: FFAppState().reportPassword,
                              ));
                            }
                            FFAppState().createdReportDoc =
                                _model.createdReportDoc?.reference;
                            safeSetState(() {});
                            _model.createdDoc =
                                await ReportRecord.getDocumentOnce(
                                    FFAppState().createdReportDoc!);
                            _model.sentEmail = await SendFirebaseEmailCall.call(
                              authorization: currentJwtToken,
                              reportDetails: functions.generateReportHTML(
                                  FFAppState().reporterData,
                                  dateTimeFormat(
                                    "M/d H:mm",
                                    FFAppState().reportTime,
                                    locale: FFLocalizations.of(context)
                                        .languageCode,
                                  ),
                                  FFAppState().reportLocation,
                                  FFAppState().reportType,
                                  FFAppState().reportDetails,
                                  FFAppState().witnessList.toList(),
                                  FFAppState().documents.toList(),
                                  FFAppState().reportedPerson,
                                  FFAppState().reportCompany,
                                  _model.createdDoc!.reportCode),
                              reportCode: _model.createdDoc?.reportCode,
                              sendTo: 'gabriel.toledo@doubleit.com.br',
                            );

                            context.goNamed(
                              'reportCode',
                              extra: <String, dynamic>{
                                kTransitionInfoKey: const TransitionInfo(
                                  hasTransition: true,
                                  transitionType: PageTransitionType.fade,
                                  duration: Duration(milliseconds: 0),
                                ),
                              },
                            );
                          } else {
                            await showDialog(
                              context: context,
                              builder: (dialogContext) {
                                return Dialog(
                                  elevation: 0,
                                  insetPadding: EdgeInsets.zero,
                                  backgroundColor: Colors.transparent,
                                  alignment: const AlignmentDirectional(0.0, 0.0)
                                      .resolve(Directionality.of(context)),
                                  child: GestureDetector(
                                    onTap: () =>
                                        FocusScope.of(dialogContext).unfocus(),
                                    child: const InfoModalWidget(
                                      typeInfo:
                                          'Você deve confirmar que aceita a declaração de veracidade.',
                                    ),
                                  ),
                                );
                              },
                            );
                          }

                          safeSetState(() {});
                        },
                        child: Container(
                          width: MediaQuery.sizeOf(context).width * 0.9,
                          height: 48.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: Align(
                            alignment: const AlignmentDirectional(0.0, 0.0),
                            child: Text(
                              'Finalizar',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'DM Sans',
                                    color: Colors.black,
                                    fontSize: 16.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ].divide(const SizedBox(height: 25.0)),
            ),
          ),
        ),
      ),
    );
  }
}
