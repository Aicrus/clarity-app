import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_toggle_icon.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'list_med_model.dart';
export 'list_med_model.dart';

class ListMedWidget extends StatefulWidget {
  const ListMedWidget({
    super.key,
    required this.refMed,
  });

  final DocumentReference? refMed;

  @override
  State<ListMedWidget> createState() => _ListMedWidgetState();
}

class _ListMedWidgetState extends State<ListMedWidget> {
  late ListMedModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ListMedModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return InkWell(
      splashColor: Colors.transparent,
      focusColor: Colors.transparent,
      hoverColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: () async {
        logFirebaseEvent('LIST_MED_COMP_Container_34o51aph_ON_TAP');
        logFirebaseEvent('Container_bottom_sheet');
        Navigator.pop(context);
      },
      child: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(0.0),
            bottomRight: Radius.circular(0.0),
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
        ),
        child: Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(20.0, 24.0, 0.0, 0.0),
          child: StreamBuilder<List<LessonsRecord>>(
            stream: queryLessonsRecord(
              queryBuilder: (lessonsRecord) => lessonsRecord.where(
                'Category',
                isEqualTo: 'Meditazione',
              ),
            ),
            builder: (context, snapshot) {
              // Customize what your widget looks like when it's loading.
              if (!snapshot.hasData) {
                return Center(
                  child: SizedBox(
                    width: 50.0,
                    height: 50.0,
                    child: SpinKitCircle(
                      color: FlutterFlowTheme.of(context).accent3,
                      size: 50.0,
                    ),
                  ),
                );
              }
              List<LessonsRecord> listViewLessonsRecordList = snapshot.data!;
              return ListView.separated(
                padding: EdgeInsets.zero,
                scrollDirection: Axis.vertical,
                itemCount: listViewLessonsRecordList.length,
                separatorBuilder: (_, __) => const SizedBox(height: 8.0),
                itemBuilder: (context, listViewIndex) {
                  final listViewLessonsRecord =
                      listViewLessonsRecordList[listViewIndex];
                  return Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            0.0, 0.0, 20.0, 12.0),
                        child: Container(
                          width: double.infinity,
                          height: 34.0,
                          decoration: const BoxDecoration(),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    4.0, 0.0, 0.0, 0.0),
                                child: Text(
                                  listViewLessonsRecord.title,
                                  style: FlutterFlowTheme.of(context)
                                      .headlineMedium
                                      .override(
                                        fontFamily: 'Istok Web',
                                        color:
                                            FlutterFlowTheme.of(context).titles,
                                        fontWeight: FontWeight.bold,
                                      ),
                                ),
                              ),
                            ].divide(const SizedBox(width: 10.0)),
                          ),
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        height: 250.0,
                        decoration: const BoxDecoration(),
                        child: StreamBuilder<List<MeditazioneRecord>>(
                          stream: queryMeditazioneRecord(
                            parent: listViewLessonsRecord.reference,
                          ),
                          builder: (context, snapshot) {
                            // Customize what your widget looks like when it's loading.
                            if (!snapshot.hasData) {
                              return Center(
                                child: SizedBox(
                                  width: 50.0,
                                  height: 50.0,
                                  child: SpinKitCircle(
                                    color: FlutterFlowTheme.of(context).accent3,
                                    size: 50.0,
                                  ),
                                ),
                              );
                            }
                            List<MeditazioneRecord>
                                listViewMeditazioneRecordList = snapshot.data!;
                            return ListView.separated(
                              padding: EdgeInsets.zero,
                              primary: false,
                              scrollDirection: Axis.horizontal,
                              itemCount: listViewMeditazioneRecordList.length,
                              separatorBuilder: (_, __) =>
                                  const SizedBox(width: 12.0),
                              itemBuilder: (context, listViewIndex) {
                                final listViewMeditazioneRecord =
                                    listViewMeditazioneRecordList[
                                        listViewIndex];
                                return Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Stack(
                                      children: [
                                        ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(16.0),
                                          child: Image.network(
                                            valueOrDefault<String>(
                                              listViewLessonsRecord.image,
                                              'https://picsum.photos/seed/839/600',
                                            ),
                                            width: 280.0,
                                            height: 175.0,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  220.0, 20.0, 0.0, 0.0),
                                          child: FlutterFlowIconButton(
                                            borderColor:
                                                FlutterFlowTheme.of(context)
                                                    .primary,
                                            borderRadius: 20.0,
                                            borderWidth: 1.0,
                                            buttonSize: 40.0,
                                            fillColor:
                                                FlutterFlowTheme.of(context)
                                                    .longtextColor,
                                            icon: const FaIcon(
                                              FontAwesomeIcons.eraser,
                                              color: Color(0xFFFF002E),
                                              size: 24.0,
                                            ),
                                            onPressed: () async {
                                              logFirebaseEvent(
                                                  'LIST_MED_COMP_eraser_ICN_ON_TAP');
                                              logFirebaseEvent(
                                                  'IconButton_backend_call');
                                              await listViewMeditazioneRecord
                                                  .reference
                                                  .delete();
                                            },
                                          ),
                                        ),
                                      ],
                                    ),
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 4.0, 0.0, 4.0),
                                      child: Container(
                                        width: 280.0,
                                        decoration: const BoxDecoration(),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 10.0, 0.0, 0.0),
                                              child: Container(
                                                width: 272.0,
                                                height: 24.0,
                                                decoration: const BoxDecoration(),
                                                child: Text(
                                                  listViewMeditazioneRecord
                                                      .title,
                                                  style: GoogleFonts.getFont(
                                                    'Open Sans',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .longtextColor,
                                                    fontWeight:
                                                        FontWeight.normal,
                                                    fontSize: 16.0,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Container(
                                              width: 135.0,
                                              height: 32.0,
                                              decoration: const BoxDecoration(),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  FaIcon(
                                                    FontAwesomeIcons.clock,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .divColor,
                                                    size: 18.0,
                                                  ),
                                                  Text(
                                                    valueOrDefault<String>(
                                                      '~ ${listViewMeditazioneRecord.length}mins.',
                                                      'ND',
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Istok Web',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .subTextColor,
                                                          fontSize: 12.0,
                                                        ),
                                                  ),
                                                  Align(
                                                    alignment:
                                                        const AlignmentDirectional(
                                                            0.0, 0.0),
                                                    child: Container(
                                                      decoration:
                                                          const BoxDecoration(),
                                                      child: ToggleIcon(
                                                        onPressed: () async {
                                                          setState(() =>
                                                              FFAppState()
                                                                      .like =
                                                                  !FFAppState()
                                                                      .like);
                                                        },
                                                        value:
                                                            FFAppState().like,
                                                        onIcon: Icon(
                                                          Icons.favorite_border,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .divColor,
                                                          size: 18.0,
                                                        ),
                                                        offIcon: Icon(
                                                          Icons
                                                              .favorite_rounded,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .divColor,
                                                          size: 18.0,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ]
                                                    .divide(
                                                        const SizedBox(width: 4.0))
                                                    .addToStart(
                                                        const SizedBox(width: 4.0))
                                                    .addToEnd(
                                                        const SizedBox(width: 4.0)),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                );
                              },
                            );
                          },
                        ),
                      ),
                    ].addToEnd(const SizedBox(height: 8.0)),
                  );
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
