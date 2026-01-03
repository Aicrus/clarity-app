// ignore_for_file: unused_local_variable

import '/admin_side/content_management/ascolti_medita_audio_adder/ascolti_medita_audio_adder_widget.dart';
import '/admin_side/content_management/dashboards/medita_lesson_creator/medita_lesson_creator_widget.dart';
import '/admin_side/content_management/medita_audio_text_file_editor/medita_ascolti_audio_text_editor/medita_ascolti_audio_text_editor_widget.dart';
import '/admin_side/content_management/medita_audio_text_file_editor/medita_pratica_audio_text_editor/medita_pratica_audio_text_editor_widget.dart';
import '/admin_side/content_management/medita_audio_text_file_editor/medita_teoria_audio_text_editor/medita_teoria_audio_text_editor_widget.dart';
import '/admin_side/content_management/medita_pratiaca_audio_adder/medita_pratiaca_audio_adder_widget.dart';
import '/admin_side/content_management/medita_teoria_audio_adder/medita_teoria_audio_adder_widget.dart';
import '/admin_side/content_management/text_medita_editor/blocco_tematico_medita_edit/blocco_tematico_medita_edit_widget.dart';
import '/admin_side/content_management/text_medita_editor/medita_lesson_text_field_editor/medita_lesson_text_field_editor_widget.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import '/user_side/components/audio_player/meditazioniplayer_ascolti/meditazioniplayer_ascolti_widget.dart';
import '/user_side/components/audio_player/meditazioniplayer_pratica/meditazioniplayer_pratica_widget.dart';
import '/user_side/components/audio_player/meditazioniplayer_teoria/meditazioniplayer_teoria_widget.dart';
import 'package:styled_divider/styled_divider.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'dash_board_meditazioni_model.dart';
export 'dash_board_meditazioni_model.dart';

class DashBoardMeditazioniWidget extends StatefulWidget {
  const DashBoardMeditazioniWidget({super.key});

  @override
  State<DashBoardMeditazioniWidget> createState() =>
      _DashBoardMeditazioniWidgetState();
}

class _DashBoardMeditazioniWidgetState
    extends State<DashBoardMeditazioniWidget> {
  late DashBoardMeditazioniModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DashBoardMeditazioniModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'DashBoardMeditazioni'});
    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Title(
        title: 'DashBoardMeditazioni',
        color: FlutterFlowTheme.of(context).primary.withAlpha(0XFF),
        child: GestureDetector(
          onTap: () => _model.unfocusNode.canRequestFocus
              ? FocusScope.of(context).requestFocus(_model.unfocusNode)
              : FocusScope.of(context).unfocus(),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).gradientTop,
            body: SafeArea(
              top: true,
              child: SingleChildScrollView(
                primary: false,
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Container(
                        width: double.infinity,
                        height: MediaQuery.sizeOf(context).height * 0.1,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).topNavBarBGColor,
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: Align(
                          alignment: const AlignmentDirectional(0.0, 0.0),
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Text(
                                      'Gestione Meditazione',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Istok Web',
                                            color: FlutterFlowTheme.of(context)
                                                .topNavBarTextColor,
                                            fontSize: 25.0,
                                          ),
                                    ),
                                  ]
                                      .divide(const SizedBox(width: 15.0))
                                      .around(const SizedBox(width: 15.0)),
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(0.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      FFButtonWidget(
                                        onPressed: () async {
                                          logFirebaseEvent(
                                              'DASH_BOARD_MEDITAZIONI_REGISTRARE_IL_CAP');
                                          logFirebaseEvent(
                                              'Button_navigate_to');

                                          context.pushNamed(
                                            'DashBoardPotenziamenti',
                                            extra: <String, dynamic>{
                                              kTransitionInfoKey:
                                                  const TransitionInfo(
                                                hasTransition: true,
                                                transitionType:
                                                    PageTransitionType.fade,
                                                duration:
                                                    Duration(milliseconds: 0),
                                              ),
                                            },
                                          );
                                        },
                                        text: 'Potenziamenti',
                                        options: FFButtonOptions(
                                          width: 130.0,
                                          height: 40.0,
                                          padding: const EdgeInsets.all(0.0),
                                          iconPadding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 0.0),
                                          color: FlutterFlowTheme.of(context)
                                              .buttonBackGround,
                                          textStyle: FlutterFlowTheme.of(
                                                  context)
                                              .headlineMedium
                                              .override(
                                                fontFamily: 'Istok Web',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .buttonTextColor,
                                                fontSize: 18.0,
                                              ),
                                          elevation: 3.0,
                                          borderRadius: const BorderRadius.only(
                                            bottomLeft: Radius.circular(0.0),
                                            bottomRight: Radius.circular(0.0),
                                            topLeft: Radius.circular(15.0),
                                            topRight: Radius.circular(0.0),
                                          ),
                                        ),
                                      ),
                                      FFButtonWidget(
                                        onPressed: () async {
                                          logFirebaseEvent(
                                              'DASH_BOARD_MEDITAZIONI_REGISTRARE_IL_CAP');
                                          logFirebaseEvent(
                                              'Button_navigate_to');

                                          context.goNamed(
                                            'DashBoardSonno',
                                            extra: <String, dynamic>{
                                              kTransitionInfoKey:
                                                  const TransitionInfo(
                                                hasTransition: true,
                                                transitionType:
                                                    PageTransitionType.fade,
                                                duration:
                                                    Duration(milliseconds: 0),
                                              ),
                                            },
                                          );
                                        },
                                        text: 'Sonno',
                                        options: FFButtonOptions(
                                          width: 130.0,
                                          height: 40.0,
                                          padding: const EdgeInsets.all(0.0),
                                          iconPadding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 0.0),
                                          color: FlutterFlowTheme.of(context)
                                              .buttonBackGround,
                                          textStyle: FlutterFlowTheme.of(
                                                  context)
                                              .headlineMedium
                                              .override(
                                                fontFamily: 'Istok Web',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .buttonTextColor,
                                                fontSize: 18.0,
                                              ),
                                          elevation: 3.0,
                                          borderRadius: const BorderRadius.only(
                                            bottomLeft: Radius.circular(0.0),
                                            bottomRight: Radius.circular(0.0),
                                            topLeft: Radius.circular(15.0),
                                            topRight: Radius.circular(0.0),
                                          ),
                                        ),
                                      ),
                                      InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          logFirebaseEvent(
                                              'DASH_BOARD_MEDITAZIONI_Icon_gjvkrelk_ON_');
                                          logFirebaseEvent('Icon_navigate_to');

                                          context.pushNamed(
                                            'AdminContentAddForm',
                                            extra: <String, dynamic>{
                                              kTransitionInfoKey:
                                                  const TransitionInfo(
                                                hasTransition: true,
                                                transitionType:
                                                    PageTransitionType.fade,
                                                duration:
                                                    Duration(milliseconds: 0),
                                              ),
                                            },
                                          );
                                        },
                                        child: Icon(
                                          Icons.library_add,
                                          color: FlutterFlowTheme.of(context)
                                              .titles,
                                          size: 24.0,
                                        ),
                                      ),
                                    ]
                                        .divide(const SizedBox(width: 10.0))
                                        .around(const SizedBox(width: 10.0)),
                                  ),
                                ),
                                InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    logFirebaseEvent(
                                        'DASH_BOARD_MEDITAZIONI_Icon_rjw70ass_ON_');
                                    logFirebaseEvent('Icon_navigate_to');

                                    context.goNamed(
                                      'homeM',
                                      extra: <String, dynamic>{
                                        kTransitionInfoKey: const TransitionInfo(
                                          hasTransition: true,
                                          transitionType:
                                              PageTransitionType.fade,
                                          duration: Duration(milliseconds: 0),
                                        ),
                                      },
                                    );
                                  },
                                  child: Icon(
                                    Icons.close,
                                    color: FlutterFlowTheme.of(context).titles,
                                    size: 24.0,
                                  ),
                                ),
                              ]
                                  .divide(const SizedBox(width: 10.0))
                                  .around(const SizedBox(width: 10.0)),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: MediaQuery.sizeOf(context).height * 0.85,
                      decoration: const BoxDecoration(),
                      child: StreamBuilder<List<LessonsRecord>>(
                        stream: queryLessonsRecord(
                          queryBuilder: (lessonsRecord) => lessonsRecord
                              .where(
                                'Category',
                                isEqualTo: 'Meditazione',
                              )
                              .orderBy('index'),
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
                          List<LessonsRecord> listViewLessonsRecordList =
                              snapshot.data!;
                          return ListView.builder(
                            padding: const EdgeInsets.fromLTRB(
                              0,
                              0,
                              0,
                              100.0,
                            ),
                            primary: false,
                            scrollDirection: Axis.vertical,
                            itemCount: listViewLessonsRecordList.length,
                            itemBuilder: (context, listViewIndex) {
                              final listViewLessonsRecord =
                                  listViewLessonsRecordList[listViewIndex];
                              return Container(
                                decoration: const BoxDecoration(),
                                child: SingleChildScrollView(
                                  primary: false,
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            5.0, 0.0, 5.0, 0.0),
                                        child: Material(
                                          color: Colors.transparent,
                                          elevation: 3.0,
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(20.0),
                                          ),
                                          child: Container(
                                            width: double.infinity,
                                            height: 50.0,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              borderRadius:
                                                  BorderRadius.circular(20.0),
                                            ),
                                            child: Align(
                                              alignment: const AlignmentDirectional(
                                                  0.0, 0.0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceEvenly,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(25.0, 0.0,
                                                                0.0, 0.0),
                                                    child: Text(
                                                      listViewLessonsRecord
                                                          .title,
                                                      maxLines: 3,
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Istok Web',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .topNavBarTextColor,
                                                                fontSize: 25.0,
                                                              ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(25.0, 0.0,
                                                                0.0, 0.0),
                                                    child: Text(
                                                      'Index : ${listViewLessonsRecord.index}',
                                                      maxLines: 3,
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Istok Web',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .topNavBarTextColor,
                                                                fontSize: 20.0,
                                                              ),
                                                    ),
                                                  ),
                                                  InkWell(
                                                    splashColor:
                                                        Colors.transparent,
                                                    focusColor:
                                                        Colors.transparent,
                                                    hoverColor:
                                                        Colors.transparent,
                                                    highlightColor:
                                                        Colors.transparent,
                                                    onTap: () async {
                                                      logFirebaseEvent(
                                                          'DASH_BOARD_MEDITAZIONI_Icon_q99uknd3_ON_');
                                                      logFirebaseEvent(
                                                          'Icon_bottom_sheet');
                                                      showModalBottomSheet(
                                                        isScrollControlled:
                                                            true,
                                                        backgroundColor:
                                                            Colors.transparent,
                                                        enableDrag: false,
                                                        context: context,
                                                        builder: (context) {
                                                          return GestureDetector(
                                                            onTap: () => _model
                                                                    .unfocusNode
                                                                    .canRequestFocus
                                                                ? FocusScope.of(
                                                                        context)
                                                                    .requestFocus(
                                                                        _model
                                                                            .unfocusNode)
                                                                : FocusScope.of(
                                                                        context)
                                                                    .unfocus(),
                                                            child: Padding(
                                                              padding: MediaQuery
                                                                  .viewInsetsOf(
                                                                      context),
                                                              child: SizedBox(
                                                                height: 350.0,
                                                                child:
                                                                    BloccoTematicoMeditaEditWidget(
                                                                  docLesson:
                                                                      listViewLessonsRecord,
                                                                ),
                                                              ),
                                                            ),
                                                          );
                                                        },
                                                      ).then((value) =>
                                                          safeSetState(() {}));
                                                    },
                                                    child: Icon(
                                                      Icons.edit_outlined,
                                                      color: FlutterFlowTheme
                                                              .of(context)
                                                          .iconsAndToggleButtons,
                                                      size: 24.0,
                                                    ),
                                                  ),
                                                  InkWell(
                                                    splashColor:
                                                        Colors.transparent,
                                                    focusColor:
                                                        Colors.transparent,
                                                    hoverColor:
                                                        Colors.transparent,
                                                    highlightColor:
                                                        Colors.transparent,
                                                    onTap: () async {
                                                      logFirebaseEvent(
                                                          'DASH_BOARD_MEDITAZIONI_Icon_ekssaodd_ON_');
                                                      logFirebaseEvent(
                                                          'Icon_alert_dialog');
                                                      var confirmDialogResponse =
                                                          await showDialog<
                                                                  bool>(
                                                                context:
                                                                    context,
                                                                builder:
                                                                    (alertDialogContext) {
                                                                  return AlertDialog(
                                                                    title: const Text(
                                                                        'Erase The Blocco Tematico from database'),
                                                                    content: const Text(
                                                                        'By confirming all data related to this Blocco Tematico will be erased.'),
                                                                    actions: [
                                                                      TextButton(
                                                                        onPressed: () => Navigator.pop(
                                                                            alertDialogContext,
                                                                            false),
                                                                        child: const Text(
                                                                            'Cancel'),
                                                                      ),
                                                                      TextButton(
                                                                        onPressed: () => Navigator.pop(
                                                                            alertDialogContext,
                                                                            true),
                                                                        child: const Text(
                                                                            'Confirm'),
                                                                      ),
                                                                    ],
                                                                  );
                                                                },
                                                              ) ??
                                                              false;
                                                      if (confirmDialogResponse) {
                                                        logFirebaseEvent(
                                                            'Icon_backend_call');
                                                        await listViewLessonsRecord
                                                            .reference
                                                            .delete();
                                                      } else {
                                                        logFirebaseEvent(
                                                            'Icon_bottom_sheet');
                                                        Navigator.pop(context);
                                                      }
                                                    },
                                                    child: Icon(
                                                      Icons.delete,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .error,
                                                      size: 24.0,
                                                    ),
                                                  ),
                                                  InkWell(
                                                    splashColor:
                                                        Colors.transparent,
                                                    focusColor:
                                                        Colors.transparent,
                                                    hoverColor:
                                                        Colors.transparent,
                                                    highlightColor:
                                                        Colors.transparent,
                                                    onTap: () async {
                                                      logFirebaseEvent(
                                                          'DASH_BOARD_MEDITAZIONI_Icon_xpizlfbu_ON_');
                                                      logFirebaseEvent(
                                                          'Icon_bottom_sheet');
                                                      showModalBottomSheet(
                                                        isScrollControlled:
                                                            true,
                                                        backgroundColor:
                                                            Colors.transparent,
                                                        context: context,
                                                        builder: (context) {
                                                          return GestureDetector(
                                                            onTap: () => _model
                                                                    .unfocusNode
                                                                    .canRequestFocus
                                                                ? FocusScope.of(
                                                                        context)
                                                                    .requestFocus(
                                                                        _model
                                                                            .unfocusNode)
                                                                : FocusScope.of(
                                                                        context)
                                                                    .unfocus(),
                                                            child: Padding(
                                                              padding: MediaQuery
                                                                  .viewInsetsOf(
                                                                      context),
                                                              child:
                                                                  MeditaLessonCreatorWidget(
                                                                bloccoTemNewMed:
                                                                    listViewLessonsRecord
                                                                        .reference,
                                                              ),
                                                            ),
                                                          );
                                                        },
                                                      ).then((value) =>
                                                          safeSetState(() {}));
                                                    },
                                                    child: Icon(
                                                      Icons.library_add,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .titles,
                                                      size: 24.0,
                                                    ),
                                                  ),
                                                  Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Text(
                                                        'Is published?',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium,
                                                      ),
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          if (listViewLessonsRecord
                                                              .isLive)
                                                            InkWell(
                                                              splashColor: Colors
                                                                  .transparent,
                                                              focusColor: Colors
                                                                  .transparent,
                                                              hoverColor: Colors
                                                                  .transparent,
                                                              highlightColor:
                                                                  Colors
                                                                      .transparent,
                                                              onTap: () async {
                                                                logFirebaseEvent(
                                                                    'DASH_BOARD_MEDITAZIONI_PAGE_liked_ON_TAP');
                                                                logFirebaseEvent(
                                                                    'liked_backend_call');

                                                                await listViewLessonsRecord
                                                                    .reference
                                                                    .update(
                                                                        createLessonsRecordData(
                                                                  isLive: false,
                                                                ));
                                                                logFirebaseEvent(
                                                                    'liked_update_app_state');
                                                                setState(() {});
                                                              },
                                                              child: Icon(
                                                                Icons
                                                                    .check_box_outlined,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .iconsAndToggleButtons,
                                                                size: 20.0,
                                                              ),
                                                            ),
                                                          if (!listViewLessonsRecord
                                                              .isLive)
                                                            InkWell(
                                                              splashColor: Colors
                                                                  .transparent,
                                                              focusColor: Colors
                                                                  .transparent,
                                                              hoverColor: Colors
                                                                  .transparent,
                                                              highlightColor:
                                                                  Colors
                                                                      .transparent,
                                                              onTap: () async {
                                                                logFirebaseEvent(
                                                                    'DASH_BOARD_MEDITAZIONI_notliked_ON_TAP');
                                                                logFirebaseEvent(
                                                                    'notliked_backend_call');

                                                                await listViewLessonsRecord
                                                                    .reference
                                                                    .update(
                                                                        createLessonsRecordData(
                                                                  isLive: true,
                                                                ));
                                                                logFirebaseEvent(
                                                                    'notliked_update_app_state');
                                                                setState(() {});
                                                              },
                                                              child: Icon(
                                                                Icons
                                                                    .check_box_outline_blank,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .iconsAndToggleButtons,
                                                                size: 20.0,
                                                              ),
                                                            ),
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                ]
                                                    .divide(
                                                        const SizedBox(width: 15.0))
                                                    .around(
                                                        const SizedBox(width: 15.0)),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Container(
                                            width: double.infinity,
                                            height: MediaQuery.sizeOf(context)
                                                    .height *
                                                0.75,
                                            decoration: const BoxDecoration(),
                                            child: StreamBuilder<
                                                List<MeditazioneRecord>>(
                                              stream: queryMeditazioneRecord(
                                                parent: listViewLessonsRecord
                                                    .reference,
                                                queryBuilder:
                                                    (meditazioneRecord) =>
                                                        meditazioneRecord
                                                            .orderBy('day'),
                                              ),
                                              builder: (context, snapshot) {
                                                // Customize what your widget looks like when it's loading.
                                                if (!snapshot.hasData) {
                                                  return Center(
                                                    child: SizedBox(
                                                      width: 50.0,
                                                      height: 50.0,
                                                      child: SpinKitCircle(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .accent3,
                                                        size: 50.0,
                                                      ),
                                                    ),
                                                  );
                                                }
                                                List<MeditazioneRecord>
                                                    listViewMeditazioneRecordList =
                                                    snapshot.data!;
                                                return ListView.separated(
                                                  padding: const EdgeInsets.symmetric(
                                                      horizontal: 10.0),
                                                  primary: false,
                                                  scrollDirection:
                                                      Axis.horizontal,
                                                  itemCount:
                                                      listViewMeditazioneRecordList
                                                          .length,
                                                  separatorBuilder: (_, __) =>
                                                      const SizedBox(width: 10.0),
                                                  itemBuilder:
                                                      (context, listViewIndex) {
                                                    final listViewMeditazioneRecord =
                                                        listViewMeditazioneRecordList[
                                                            listViewIndex];
                                                    return Align(
                                                      alignment:
                                                          const AlignmentDirectional(
                                                              0.0, -1.0),
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    5.0,
                                                                    10.0,
                                                                    5.0,
                                                                    10.0),
                                                        child: Material(
                                                          color: Colors
                                                              .transparent,
                                                          elevation: 3.0,
                                                          shape:
                                                              RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10.0),
                                                          ),
                                                          child: Container(
                                                            decoration:
                                                                BoxDecoration(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .gradientTop,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          10.0),
                                                            ),
                                                            child: Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                      .all(
                                                                          10.0),
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  SingleChildScrollView(
                                                                    child:
                                                                        Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .start,
                                                                      children: [
                                                                        Align(
                                                                          alignment: const AlignmentDirectional(
                                                                              0.0,
                                                                              0.0),
                                                                          child:
                                                                              Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.center,
                                                                            children:
                                                                                [
                                                                              Container(
                                                                                width: 100.0,
                                                                                height: 100.0,
                                                                                decoration: const BoxDecoration(),
                                                                                child: Stack(
                                                                                  children: [
                                                                                    ClipRRect(
                                                                                      borderRadius: BorderRadius.circular(16.0),
                                                                                      child: Image.network(
                                                                                        listViewMeditazioneRecord.image,
                                                                                        width: 280.0,
                                                                                        height: 175.0,
                                                                                        fit: BoxFit.cover,
                                                                                      ),
                                                                                    ),
                                                                                    if (listViewMeditazioneRecord.premium)
                                                                                      Stack(
                                                                                        children: [
                                                                                          Opacity(
                                                                                            opacity: 0.5,
                                                                                            child: Align(
                                                                                              alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                              child: SvgPicture.asset(
                                                                                                'assets/images/LOCK.svg',
                                                                                                width: 50.0,
                                                                                                fit: BoxFit.contain,
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                          Opacity(
                                                                                            opacity: 0.5,
                                                                                            child: Align(
                                                                                              alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                              child: Container(
                                                                                                width: double.infinity,
                                                                                                height: double.infinity,
                                                                                                decoration: BoxDecoration(
                                                                                                  color: const Color(0xFF399AD2),
                                                                                                  borderRadius: BorderRadius.circular(16.0),
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                        ],
                                                                                      ),
                                                                                  ],
                                                                                ),
                                                                              ),
                                                                              FFButtonWidget(
                                                                                onPressed: () async {
                                                                                  logFirebaseEvent('DASH_BOARD_MEDITAZIONI_UPDATE_COVER_BTN_');
                                                                                  logFirebaseEvent('Button_upload_media_to_firebase');
                                                                                  final selectedMedia = await selectMediaWithSourceBottomSheet(
                                                                                    context: context,
                                                                                    maxWidth: 1240.00,
                                                                                    maxHeight: 1920.00,
                                                                                    allowPhoto: true,
                                                                                  );
                                                                                  if (selectedMedia != null && selectedMedia.every((m) => validateFileFormat(m.storagePath, context))) {
                                                                                    setState(() => _model.isDataUploading1 = true);
                                                                                    var selectedUploadedFiles = <FFUploadedFile>[];

                                                                                    var downloadUrls = <String>[];
                                                                                    try {
                                                                                      selectedUploadedFiles = selectedMedia
                                                                                          .map((m) => FFUploadedFile(
                                                                                                name: m.storagePath.split('/').last,
                                                                                                bytes: m.bytes,
                                                                                                height: m.dimensions?.height,
                                                                                                width: m.dimensions?.width,
                                                                                                blurHash: m.blurHash,
                                                                                              ))
                                                                                          .toList();

                                                                                      downloadUrls = (await Future.wait(
                                                                                        selectedMedia.map(
                                                                                          (m) async => await uploadData(m.storagePath, m.bytes),
                                                                                        ),
                                                                                      ))
                                                                                          .where((u) => u != null)
                                                                                          .map((u) => u!)
                                                                                          .toList();
                                                                                    } finally {
                                                                                      _model.isDataUploading1 = false;
                                                                                    }
                                                                                    if (selectedUploadedFiles.length == selectedMedia.length && downloadUrls.length == selectedMedia.length) {
                                                                                      setState(() {
                                                                                        _model.uploadedLocalFile1 = selectedUploadedFiles.first;
                                                                                        _model.uploadedFileUrl1 = downloadUrls.first;
                                                                                      });
                                                                                    } else {
                                                                                      setState(() {});
                                                                                      return;
                                                                                    }
                                                                                  }

                                                                                  logFirebaseEvent('Button_backend_call');

                                                                                  await listViewMeditazioneRecord.reference.update(createMeditazioneRecordData(
                                                                                    image: _model.uploadedFileUrl1,
                                                                                  ));
                                                                                  logFirebaseEvent('Button_alert_dialog');
                                                                                  await showDialog(
                                                                                    context: context,
                                                                                    builder: (alertDialogContext) {
                                                                                      return AlertDialog(
                                                                                        title: const Text('Lesson Cover'),
                                                                                        content: const Text('Image is uploaded'),
                                                                                        actions: [
                                                                                          TextButton(
                                                                                            onPressed: () => Navigator.pop(alertDialogContext),
                                                                                            child: const Text('Ok'),
                                                                                          ),
                                                                                        ],
                                                                                      );
                                                                                    },
                                                                                  );
                                                                                },
                                                                                text: 'Update cover',
                                                                                options: FFButtonOptions(
                                                                                  height: 20.0,
                                                                                  padding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                                                                                  iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                  color: FlutterFlowTheme.of(context).primary,
                                                                                  textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                        fontFamily: 'Istok Web',
                                                                                        color: FlutterFlowTheme.of(context).textInputColor,
                                                                                      ),
                                                                                  elevation: 3.0,
                                                                                  borderSide: const BorderSide(
                                                                                    color: Colors.transparent,
                                                                                    width: 1.0,
                                                                                  ),
                                                                                  borderRadius: BorderRadius.circular(8.0),
                                                                                ),
                                                                              ),
                                                                            ].divide(const SizedBox(width: 15.0)).around(const SizedBox(width: 15.0)),
                                                                          ),
                                                                        ),
                                                                        SizedBox(
                                                                          width:
                                                                              320.0,
                                                                          child:
                                                                              StyledDivider(
                                                                            thickness:
                                                                                1.0,
                                                                            color:
                                                                                FlutterFlowTheme.of(context).longtextColor,
                                                                            lineStyle:
                                                                                DividerLineStyle.dotted,
                                                                          ),
                                                                        ),
                                                                        Container(
                                                                          width:
                                                                              300.0,
                                                                          decoration:
                                                                              const BoxDecoration(),
                                                                          child:
                                                                              Column(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            children: [
                                                                              Container(
                                                                                decoration: const BoxDecoration(),
                                                                                child: Row(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                  children: [
                                                                                    Flexible(
                                                                                      child: Align(
                                                                                        alignment: const AlignmentDirectional(-1.0, 0.0),
                                                                                        child: Column(
                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                          crossAxisAlignment: CrossAxisAlignment.start,
                                                                                          children: [
                                                                                            Text(
                                                                                              listViewMeditazioneRecord.title,
                                                                                              maxLines: 3,
                                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                    fontFamily: 'Istok Web',
                                                                                                    fontSize: 20.0,
                                                                                                  ),
                                                                                            ),
                                                                                            AutoSizeText(
                                                                                              listViewMeditazioneRecord.susubtitle.maybeHandleOverflow(
                                                                                                maxChars: 15,
                                                                                                replacement: '…',
                                                                                              ),
                                                                                              maxLines: 3,
                                                                                              style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                            ),
                                                                                            AutoSizeText(
                                                                                              'Index : ${listViewMeditazioneRecord.day}'.maybeHandleOverflow(
                                                                                                maxChars: 15,
                                                                                                replacement: '…',
                                                                                              ),
                                                                                              maxLines: 3,
                                                                                              style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                            ),
                                                                                            Text(
                                                                                              'Length : ${listViewMeditazioneRecord.day}min.',
                                                                                              maxLines: 3,
                                                                                              style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                            ),
                                                                                            SizedBox(
                                                                                              width: 320.0,
                                                                                              child: StyledDivider(
                                                                                                thickness: 1.0,
                                                                                                color: FlutterFlowTheme.of(context).longtextColor,
                                                                                                lineStyle: DividerLineStyle.dotted,
                                                                                              ),
                                                                                            ),
                                                                                          ].divide(const SizedBox(height: 5.0)),
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                    FlutterFlowIconButton(
                                                                                      borderColor: FlutterFlowTheme.of(context).primary,
                                                                                      borderRadius: 20.0,
                                                                                      borderWidth: 1.0,
                                                                                      buttonSize: 40.0,
                                                                                      fillColor: FlutterFlowTheme.of(context).iconsAndToggleButtons,
                                                                                      icon: Icon(
                                                                                        Icons.edit_note,
                                                                                        color: FlutterFlowTheme.of(context).primary,
                                                                                        size: 24.0,
                                                                                      ),
                                                                                      onPressed: () async {
                                                                                        logFirebaseEvent('DASH_BOARD_MEDITAZIONI_edit_note_ICN_ON_');
                                                                                        logFirebaseEvent('IconButton_bottom_sheet');
                                                                                        showModalBottomSheet(
                                                                                          isScrollControlled: true,
                                                                                          backgroundColor: Colors.transparent,
                                                                                          enableDrag: false,
                                                                                          context: context,
                                                                                          builder: (context) {
                                                                                            return GestureDetector(
                                                                                              onTap: () => _model.unfocusNode.canRequestFocus ? FocusScope.of(context).requestFocus(_model.unfocusNode) : FocusScope.of(context).unfocus(),
                                                                                              child: Padding(
                                                                                                padding: MediaQuery.viewInsetsOf(context),
                                                                                                child: SizedBox(
                                                                                                  height: 350.0,
                                                                                                  child: MeditaLessonTextFieldEditorWidget(
                                                                                                    docMedita: listViewMeditazioneRecord,
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                            );
                                                                                          },
                                                                                        ).then((value) => safeSetState(() {}));
                                                                                      },
                                                                                    ),
                                                                                    Align(
                                                                                      alignment: const AlignmentDirectional(1.0, 0.0),
                                                                                      child: InkWell(
                                                                                        splashColor: Colors.transparent,
                                                                                        focusColor: Colors.transparent,
                                                                                        hoverColor: Colors.transparent,
                                                                                        highlightColor: Colors.transparent,
                                                                                        onTap: () async {
                                                                                          logFirebaseEvent('DASH_BOARD_MEDITAZIONI_Icon_cic5ttfi_ON_');
                                                                                          logFirebaseEvent('Icon_alert_dialog');
                                                                                          var confirmDialogResponse = await showDialog<bool>(
                                                                                                context: context,
                                                                                                builder: (alertDialogContext) {
                                                                                                  return AlertDialog(
                                                                                                    title: const Text('Erase this lesson from database'),
                                                                                                    content: const Text('You are deleting The Lessons and related Audio files'),
                                                                                                    actions: [
                                                                                                      TextButton(
                                                                                                        onPressed: () => Navigator.pop(alertDialogContext, false),
                                                                                                        child: const Text('Cancel'),
                                                                                                      ),
                                                                                                      TextButton(
                                                                                                        onPressed: () => Navigator.pop(alertDialogContext, true),
                                                                                                        child: const Text('Confirm'),
                                                                                                      ),
                                                                                                    ],
                                                                                                  );
                                                                                                },
                                                                                              ) ??
                                                                                              false;
                                                                                          if (confirmDialogResponse) {
                                                                                            logFirebaseEvent('Icon_backend_call');
                                                                                            await listViewMeditazioneRecord.reference.delete();
                                                                                          }
                                                                                        },
                                                                                        child: Icon(
                                                                                          Icons.delete,
                                                                                          color: FlutterFlowTheme.of(context).error,
                                                                                          size: 20.0,
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                              ),
                                                                              Row(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                children: [
                                                                                  Text(
                                                                                    'Is Premium?',
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                  ),
                                                                                  Row(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    children: [
                                                                                      if (listViewMeditazioneRecord.premium)
                                                                                        InkWell(
                                                                                          splashColor: Colors.transparent,
                                                                                          focusColor: Colors.transparent,
                                                                                          hoverColor: Colors.transparent,
                                                                                          highlightColor: Colors.transparent,
                                                                                          onTap: () async {
                                                                                            logFirebaseEvent('DASH_BOARD_MEDITAZIONI_PAGE_liked_ON_TAP');
                                                                                            logFirebaseEvent('liked_backend_call');

                                                                                            await listViewMeditazioneRecord.reference.update(createMeditazioneRecordData(
                                                                                              premium: false,
                                                                                            ));
                                                                                            logFirebaseEvent('liked_update_app_state');
                                                                                            setState(() {});
                                                                                          },
                                                                                          child: Icon(
                                                                                            Icons.check_box_outlined,
                                                                                            color: FlutterFlowTheme.of(context).iconsAndToggleButtons,
                                                                                            size: 20.0,
                                                                                          ),
                                                                                        ),
                                                                                      if (!listViewMeditazioneRecord.premium)
                                                                                        InkWell(
                                                                                          splashColor: Colors.transparent,
                                                                                          focusColor: Colors.transparent,
                                                                                          hoverColor: Colors.transparent,
                                                                                          highlightColor: Colors.transparent,
                                                                                          onTap: () async {
                                                                                            logFirebaseEvent('DASH_BOARD_MEDITAZIONI_notliked_ON_TAP');
                                                                                            logFirebaseEvent('notliked_backend_call');

                                                                                            await listViewMeditazioneRecord.reference.update(createMeditazioneRecordData(
                                                                                              premium: true,
                                                                                            ));
                                                                                            logFirebaseEvent('notliked_update_app_state');
                                                                                            setState(() {});
                                                                                          },
                                                                                          child: Icon(
                                                                                            Icons.check_box_outline_blank,
                                                                                            color: FlutterFlowTheme.of(context).iconsAndToggleButtons,
                                                                                            size: 20.0,
                                                                                          ),
                                                                                        ),
                                                                                    ],
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                              SizedBox(
                                                                                width: 320.0,
                                                                                child: StyledDivider(
                                                                                  thickness: 1.0,
                                                                                  color: FlutterFlowTheme.of(context).longtextColor,
                                                                                  lineStyle: DividerLineStyle.dotted,
                                                                                ),
                                                                              ),
                                                                              Row(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                children: [
                                                                                  Text(
                                                                                    'Teoria Audio files?',
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                  ),
                                                                                  Row(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    children: [
                                                                                      if (listViewMeditazioneRecord.isTeoria)
                                                                                        InkWell(
                                                                                          splashColor: Colors.transparent,
                                                                                          focusColor: Colors.transparent,
                                                                                          hoverColor: Colors.transparent,
                                                                                          highlightColor: Colors.transparent,
                                                                                          onTap: () async {
                                                                                            logFirebaseEvent('DASH_BOARD_MEDITAZIONI_PAGE_liked_ON_TAP');
                                                                                            logFirebaseEvent('liked_backend_call');

                                                                                            await listViewMeditazioneRecord.reference.update(createMeditazioneRecordData(
                                                                                              isTeoria: false,
                                                                                            ));
                                                                                            logFirebaseEvent('liked_update_app_state');
                                                                                            setState(() {});
                                                                                          },
                                                                                          child: Icon(
                                                                                            Icons.check_box_outlined,
                                                                                            color: FlutterFlowTheme.of(context).iconsAndToggleButtons,
                                                                                            size: 20.0,
                                                                                          ),
                                                                                        ),
                                                                                      if (!listViewMeditazioneRecord.isTeoria)
                                                                                        InkWell(
                                                                                          splashColor: Colors.transparent,
                                                                                          focusColor: Colors.transparent,
                                                                                          hoverColor: Colors.transparent,
                                                                                          highlightColor: Colors.transparent,
                                                                                          onTap: () async {
                                                                                            logFirebaseEvent('DASH_BOARD_MEDITAZIONI_notliked_ON_TAP');
                                                                                            logFirebaseEvent('notliked_backend_call');

                                                                                            await listViewMeditazioneRecord.reference.update(createMeditazioneRecordData(
                                                                                              isTeoria: true,
                                                                                            ));
                                                                                            logFirebaseEvent('notliked_update_app_state');
                                                                                            setState(() {});
                                                                                          },
                                                                                          child: Icon(
                                                                                            Icons.check_box_outline_blank,
                                                                                            color: FlutterFlowTheme.of(context).iconsAndToggleButtons,
                                                                                            size: 20.0,
                                                                                          ),
                                                                                        ),
                                                                                    ],
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                              SizedBox(
                                                                                width: 320.0,
                                                                                child: StyledDivider(
                                                                                  thickness: 1.0,
                                                                                  color: FlutterFlowTheme.of(context).longtextColor,
                                                                                  lineStyle: DividerLineStyle.dotted,
                                                                                ),
                                                                              ),
                                                                              Row(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                children: [
                                                                                  Text(
                                                                                    'Teoria Pratica files?',
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                  ),
                                                                                  Row(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    children: [
                                                                                      if (listViewMeditazioneRecord.isPratica)
                                                                                        InkWell(
                                                                                          splashColor: Colors.transparent,
                                                                                          focusColor: Colors.transparent,
                                                                                          hoverColor: Colors.transparent,
                                                                                          highlightColor: Colors.transparent,
                                                                                          onTap: () async {
                                                                                            logFirebaseEvent('DASH_BOARD_MEDITAZIONI_PAGE_liked_ON_TAP');
                                                                                            logFirebaseEvent('liked_backend_call');

                                                                                            await listViewMeditazioneRecord.reference.update(createMeditazioneRecordData(
                                                                                              isPratica: false,
                                                                                            ));
                                                                                            logFirebaseEvent('liked_update_app_state');
                                                                                            setState(() {});
                                                                                          },
                                                                                          child: Icon(
                                                                                            Icons.check_box_outlined,
                                                                                            color: FlutterFlowTheme.of(context).iconsAndToggleButtons,
                                                                                            size: 20.0,
                                                                                          ),
                                                                                        ),
                                                                                      if (!listViewMeditazioneRecord.isPratica)
                                                                                        InkWell(
                                                                                          splashColor: Colors.transparent,
                                                                                          focusColor: Colors.transparent,
                                                                                          hoverColor: Colors.transparent,
                                                                                          highlightColor: Colors.transparent,
                                                                                          onTap: () async {
                                                                                            logFirebaseEvent('DASH_BOARD_MEDITAZIONI_notliked_ON_TAP');
                                                                                            logFirebaseEvent('notliked_backend_call');

                                                                                            await listViewMeditazioneRecord.reference.update(createMeditazioneRecordData(
                                                                                              isPratica: true,
                                                                                            ));
                                                                                            logFirebaseEvent('notliked_update_app_state');
                                                                                            setState(() {});
                                                                                          },
                                                                                          child: Icon(
                                                                                            Icons.check_box_outline_blank,
                                                                                            color: FlutterFlowTheme.of(context).iconsAndToggleButtons,
                                                                                            size: 20.0,
                                                                                          ),
                                                                                        ),
                                                                                    ],
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                              SizedBox(
                                                                                width: 320.0,
                                                                                child: StyledDivider(
                                                                                  thickness: 1.0,
                                                                                  color: FlutterFlowTheme.of(context).longtextColor,
                                                                                  lineStyle: DividerLineStyle.dotted,
                                                                                ),
                                                                              ),
                                                                              Row(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                children: [
                                                                                  Text(
                                                                                    'Teoria Ascolti files ?',
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                  ),
                                                                                  Row(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    children: [
                                                                                      if (listViewMeditazioneRecord.isAscolti)
                                                                                        InkWell(
                                                                                          splashColor: Colors.transparent,
                                                                                          focusColor: Colors.transparent,
                                                                                          hoverColor: Colors.transparent,
                                                                                          highlightColor: Colors.transparent,
                                                                                          onTap: () async {
                                                                                            logFirebaseEvent('DASH_BOARD_MEDITAZIONI_PAGE_liked_ON_TAP');
                                                                                            logFirebaseEvent('liked_backend_call');

                                                                                            await listViewMeditazioneRecord.reference.update(createMeditazioneRecordData(
                                                                                              isAscolti: false,
                                                                                            ));
                                                                                            logFirebaseEvent('liked_update_app_state');
                                                                                            setState(() {});
                                                                                          },
                                                                                          child: Icon(
                                                                                            Icons.check_box_outlined,
                                                                                            color: FlutterFlowTheme.of(context).iconsAndToggleButtons,
                                                                                            size: 20.0,
                                                                                          ),
                                                                                        ),
                                                                                      if (!listViewMeditazioneRecord.isAscolti)
                                                                                        InkWell(
                                                                                          splashColor: Colors.transparent,
                                                                                          focusColor: Colors.transparent,
                                                                                          hoverColor: Colors.transparent,
                                                                                          highlightColor: Colors.transparent,
                                                                                          onTap: () async {
                                                                                            logFirebaseEvent('DASH_BOARD_MEDITAZIONI_notliked_ON_TAP');
                                                                                            logFirebaseEvent('notliked_backend_call');

                                                                                            await listViewMeditazioneRecord.reference.update(createMeditazioneRecordData(
                                                                                              isAscolti: true,
                                                                                            ));
                                                                                            logFirebaseEvent('notliked_update_app_state');
                                                                                            setState(() {});
                                                                                          },
                                                                                          child: Icon(
                                                                                            Icons.check_box_outline_blank,
                                                                                            color: FlutterFlowTheme.of(context).iconsAndToggleButtons,
                                                                                            size: 20.0,
                                                                                          ),
                                                                                        ),
                                                                                    ],
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                        SizedBox(
                                                                          width:
                                                                              320.0,
                                                                          child:
                                                                              StyledDivider(
                                                                            thickness:
                                                                                1.0,
                                                                            color:
                                                                                FlutterFlowTheme.of(context).longtextColor,
                                                                            lineStyle:
                                                                                DividerLineStyle.dotted,
                                                                          ),
                                                                        ),
                                                                        if (listViewMeditazioneRecord
                                                                            .isTeoria)
                                                                          Padding(
                                                                            padding:
                                                                                const EdgeInsets.all(10.0),
                                                                            child:
                                                                                Container(
                                                                              width: 300.0,
                                                                              decoration: BoxDecoration(
                                                                                color: FlutterFlowTheme.of(context).gradientBottom,
                                                                                borderRadius: BorderRadius.circular(20.0),
                                                                              ),
                                                                              child: Column(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                children: [
                                                                                  StreamBuilder<List<AudioTeoriaRecord>>(
                                                                                    stream: queryAudioTeoriaRecord(
                                                                                      singleRecord: true,
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
                                                                                      List<AudioTeoriaRecord> rowAudioTeoriaRecordList = snapshot.data!;
                                                                                      final rowAudioTeoriaRecord = rowAudioTeoriaRecordList.isNotEmpty ? rowAudioTeoriaRecordList.first : null;
                                                                                      return Row(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                                                        children: [
                                                                                          Text(
                                                                                            'Audio Teoria',
                                                                                            style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                          ),
                                                                                          InkWell(
                                                                                            splashColor: Colors.transparent,
                                                                                            focusColor: Colors.transparent,
                                                                                            hoverColor: Colors.transparent,
                                                                                            highlightColor: Colors.transparent,
                                                                                            onTap: () async {
                                                                                              logFirebaseEvent('DASH_BOARD_MEDITAZIONI_Icon_aeb4kgvm_ON_');
                                                                                              logFirebaseEvent('Icon_bottom_sheet');
                                                                                              showModalBottomSheet(
                                                                                                isScrollControlled: true,
                                                                                                backgroundColor: Colors.transparent,
                                                                                                context: context,
                                                                                                builder: (context) {
                                                                                                  return GestureDetector(
                                                                                                    onTap: () => _model.unfocusNode.canRequestFocus ? FocusScope.of(context).requestFocus(_model.unfocusNode) : FocusScope.of(context).unfocus(),
                                                                                                    child: Padding(
                                                                                                      padding: MediaQuery.viewInsetsOf(context),
                                                                                                      child: SizedBox(
                                                                                                        height: MediaQuery.sizeOf(context).height * 1.0,
                                                                                                        child: MeditaTeoriaAudioAdderWidget(
                                                                                                          parameter1: listViewMeditazioneRecord.reference,
                                                                                                        ),
                                                                                                      ),
                                                                                                    ),
                                                                                                  );
                                                                                                },
                                                                                              ).then((value) => safeSetState(() {}));
                                                                                            },
                                                                                            child: Icon(
                                                                                              Icons.add_box,
                                                                                              color: FlutterFlowTheme.of(context).titles,
                                                                                              size: 20.0,
                                                                                            ),
                                                                                          ),
                                                                                        ],
                                                                                      );
                                                                                    },
                                                                                  ),
                                                                                  StreamBuilder<List<AudioTeoriaRecord>>(
                                                                                    stream: queryAudioTeoriaRecord(
                                                                                      singleRecord: true,
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
                                                                                      List<AudioTeoriaRecord> rowAudioTeoriaRecordList = snapshot.data!;
                                                                                      final rowAudioTeoriaRecord = rowAudioTeoriaRecordList.isNotEmpty ? rowAudioTeoriaRecordList.first : null;
                                                                                      return Row(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        mainAxisAlignment: MainAxisAlignment.start,
                                                                                        children: [
                                                                                          Text(
                                                                                            'Titolo',
                                                                                            style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                          ),
                                                                                          Text(
                                                                                            'Durata',
                                                                                            style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                          ),
                                                                                          Text(
                                                                                            'Index',
                                                                                            style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                          ),
                                                                                          Container(
                                                                                            width: 70.0,
                                                                                            decoration: const BoxDecoration(),
                                                                                          ),
                                                                                        ].divide(const SizedBox(width: 20.0)).around(const SizedBox(width: 20.0)),
                                                                                      );
                                                                                    },
                                                                                  ),
                                                                                  StreamBuilder<List<AudioTeoriaRecord>>(
                                                                                    stream: queryAudioTeoriaRecord(
                                                                                      queryBuilder: (audioTeoriaRecord) => audioTeoriaRecord
                                                                                          .where(
                                                                                            'LessonTypeRef',
                                                                                            isEqualTo: listViewMeditazioneRecord.reference,
                                                                                          )
                                                                                          .orderBy('index'),
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
                                                                                      List<AudioTeoriaRecord> columnAudioTeoriaRecordList = snapshot.data!;
                                                                                      return Column(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        children: List.generate(columnAudioTeoriaRecordList.length, (columnIndex) {
                                                                                          final columnAudioTeoriaRecord = columnAudioTeoriaRecordList[columnIndex];
                                                                                          return Row(
                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                            children: [
                                                                                              Container(
                                                                                                width: 50.0,
                                                                                                height: 20.0,
                                                                                                decoration: const BoxDecoration(),
                                                                                                child: InkWell(
                                                                                                  splashColor: Colors.transparent,
                                                                                                  focusColor: Colors.transparent,
                                                                                                  hoverColor: Colors.transparent,
                                                                                                  highlightColor: Colors.transparent,
                                                                                                  onTap: () async {
                                                                                                    logFirebaseEvent('DASH_BOARD_MEDITAZIONI_PAGE_Title_ON_TAP');
                                                                                                    logFirebaseEvent('Title_bottom_sheet');
                                                                                                    await showModalBottomSheet(
                                                                                                      isScrollControlled: true,
                                                                                                      backgroundColor: Colors.transparent,
                                                                                                      enableDrag: false,
                                                                                                      context: context,
                                                                                                      builder: (context) {
                                                                                                        return GestureDetector(
                                                                                                          onTap: () => _model.unfocusNode.canRequestFocus ? FocusScope.of(context).requestFocus(_model.unfocusNode) : FocusScope.of(context).unfocus(),
                                                                                                          child: Padding(
                                                                                                            padding: MediaQuery.viewInsetsOf(context),
                                                                                                            child: SizedBox(
                                                                                                              height: 350.0,
                                                                                                              child: MeditaTeoriaAudioTextEditorWidget(
                                                                                                                docMedita: columnAudioTeoriaRecord,
                                                                                                              ),
                                                                                                            ),
                                                                                                          ),
                                                                                                        );
                                                                                                      },
                                                                                                    ).then((value) => safeSetState(() {}));
                                                                                                  },
                                                                                                  child: Text(
                                                                                                    columnAudioTeoriaRecord.title,
                                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                          fontFamily: 'Istok Web',
                                                                                                          color: FlutterFlowTheme.of(context).longtextColor,
                                                                                                        ),
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                              Container(
                                                                                                width: 50.0,
                                                                                                height: 20.0,
                                                                                                decoration: const BoxDecoration(),
                                                                                                child: Text(
                                                                                                  '${columnAudioTeoriaRecord.length} min.',
                                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                        fontFamily: 'Istok Web',
                                                                                                        color: FlutterFlowTheme.of(context).longtextColor,
                                                                                                      ),
                                                                                                ),
                                                                                              ),
                                                                                              Container(
                                                                                                width: 50.0,
                                                                                                height: 20.0,
                                                                                                decoration: const BoxDecoration(),
                                                                                                child: Text(
                                                                                                  'Ord : ${columnAudioTeoriaRecord.index.toString()}'.maybeHandleOverflow(maxChars: 10),
                                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                        fontFamily: 'Istok Web',
                                                                                                        color: FlutterFlowTheme.of(context).longtextColor,
                                                                                                      ),
                                                                                                ),
                                                                                              ),
                                                                                              Column(
                                                                                                mainAxisSize: MainAxisSize.max,
                                                                                                children: [
                                                                                                  InkWell(
                                                                                                    splashColor: Colors.transparent,
                                                                                                    focusColor: Colors.transparent,
                                                                                                    hoverColor: Colors.transparent,
                                                                                                    highlightColor: Colors.transparent,
                                                                                                    onTap: () async {
                                                                                                      logFirebaseEvent('DASH_BOARD_MEDITAZIONI_Icon_i45idg4z_ON_');
                                                                                                      logFirebaseEvent('Icon_bottom_sheet');
                                                                                                      showModalBottomSheet(
                                                                                                        isScrollControlled: true,
                                                                                                        backgroundColor: Colors.transparent,
                                                                                                        context: context,
                                                                                                        builder: (context) {
                                                                                                          return GestureDetector(
                                                                                                            onTap: () => _model.unfocusNode.canRequestFocus ? FocusScope.of(context).requestFocus(_model.unfocusNode) : FocusScope.of(context).unfocus(),
                                                                                                            child: Padding(
                                                                                                              padding: MediaQuery.viewInsetsOf(context),
                                                                                                              child: MeditazioniplayerTeoriaWidget(
                                                                                                                audioPathDocTeoria: columnAudioTeoriaRecord,
                                                                                                                image: valueOrDefault<String>(
                                                                                                                  columnAudioTeoriaRecord.imageAudio,
                                                                                                                  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/clarity-f2mtym/assets/e3l8htvsf7nn/2.png',
                                                                                                                ),
                                                                                                              ),
                                                                                                            ),
                                                                                                          );
                                                                                                        },
                                                                                                      ).then((value) => safeSetState(() {}));
                                                                                                    },
                                                                                                    onDoubleTap: () async {
                                                                                                      logFirebaseEvent('DASH_BOARD_MEDITAZIONI_Icon_i45idg4z_ON_');
                                                                                                      logFirebaseEvent('Icon_alert_dialog');
                                                                                                      var confirmDialogResponse = await showDialog<bool>(
                                                                                                            context: context,
                                                                                                            builder: (alertDialogContext) {
                                                                                                              return AlertDialog(
                                                                                                                title: const Text('Replace audio file'),
                                                                                                                content: const Text('Du you want to replace the audio file?'),
                                                                                                                actions: [
                                                                                                                  TextButton(
                                                                                                                    onPressed: () => Navigator.pop(alertDialogContext, false),
                                                                                                                    child: const Text('Cancel'),
                                                                                                                  ),
                                                                                                                  TextButton(
                                                                                                                    onPressed: () => Navigator.pop(alertDialogContext, true),
                                                                                                                    child: const Text('Confirm'),
                                                                                                                  ),
                                                                                                                ],
                                                                                                              );
                                                                                                            },
                                                                                                          ) ??
                                                                                                          false;
                                                                                                      if (confirmDialogResponse) {
                                                                                                        logFirebaseEvent('Icon_upload_file_to_firebase');
                                                                                                        final selectedFiles = await selectFiles(
                                                                                                          allowedExtensions: ['mp3'],
                                                                                                          multiFile: false,
                                                                                                        );
                                                                                                        if (selectedFiles != null) {
                                                                                                          setState(() => _model.isDataUploading2 = true);
                                                                                                          var selectedUploadedFiles = <FFUploadedFile>[];

                                                                                                          var downloadUrls = <String>[];
                                                                                                          try {
                                                                                                            showUploadMessage(
                                                                                                              context,
                                                                                                              'Uploading file...',
                                                                                                              showLoading: true,
                                                                                                            );
                                                                                                            selectedUploadedFiles = selectedFiles
                                                                                                                .map((m) => FFUploadedFile(
                                                                                                                      name: m.storagePath.split('/').last,
                                                                                                                      bytes: m.bytes,
                                                                                                                    ))
                                                                                                                .toList();

                                                                                                            downloadUrls = (await Future.wait(
                                                                                                              selectedFiles.map(
                                                                                                                (f) async => await uploadData(f.storagePath, f.bytes),
                                                                                                              ),
                                                                                                            ))
                                                                                                                .where((u) => u != null)
                                                                                                                .map((u) => u!)
                                                                                                                .toList();
                                                                                                          } finally {
                                                                                                            ScaffoldMessenger.of(context).hideCurrentSnackBar();
                                                                                                            _model.isDataUploading2 = false;
                                                                                                          }
                                                                                                          if (selectedUploadedFiles.length == selectedFiles.length && downloadUrls.length == selectedFiles.length) {
                                                                                                            setState(() {
                                                                                                              _model.uploadedLocalFile2 = selectedUploadedFiles.first;
                                                                                                              _model.uploadedFileUrl2 = downloadUrls.first;
                                                                                                            });
                                                                                                            showUploadMessage(
                                                                                                              context,
                                                                                                              'Success!',
                                                                                                            );
                                                                                                          } else {
                                                                                                            setState(() {});
                                                                                                            showUploadMessage(
                                                                                                              context,
                                                                                                              'Failed to upload file',
                                                                                                            );
                                                                                                            return;
                                                                                                          }
                                                                                                        }

                                                                                                        logFirebaseEvent('Icon_backend_call');

                                                                                                        await columnAudioTeoriaRecord.reference.update(createAudioTeoriaRecordData(
                                                                                                          audioTeoria: _model.uploadedFileUrl2,
                                                                                                        ));
                                                                                                      }
                                                                                                    },
                                                                                                    child: Icon(
                                                                                                      Icons.play_circle,
                                                                                                      color: FlutterFlowTheme.of(context).titles,
                                                                                                      size: 20.0,
                                                                                                    ),
                                                                                                  ),
                                                                                                ],
                                                                                              ),
                                                                                              InkWell(
                                                                                                splashColor: Colors.transparent,
                                                                                                focusColor: Colors.transparent,
                                                                                                hoverColor: Colors.transparent,
                                                                                                highlightColor: Colors.transparent,
                                                                                                onTap: () async {
                                                                                                  logFirebaseEvent('DASH_BOARD_MEDITAZIONI_Icon_jae1aspc_ON_');
                                                                                                  logFirebaseEvent('Icon_alert_dialog');
                                                                                                  var confirmDialogResponse = await showDialog<bool>(
                                                                                                        context: context,
                                                                                                        builder: (alertDialogContext) {
                                                                                                          return AlertDialog(
                                                                                                            title: const Text('Erase Audio from database'),
                                                                                                            content: const Text('Are you willing to delete this audio?'),
                                                                                                            actions: [
                                                                                                              TextButton(
                                                                                                                onPressed: () => Navigator.pop(alertDialogContext, false),
                                                                                                                child: const Text('Cancel'),
                                                                                                              ),
                                                                                                              TextButton(
                                                                                                                onPressed: () => Navigator.pop(alertDialogContext, true),
                                                                                                                child: const Text('Confirm'),
                                                                                                              ),
                                                                                                            ],
                                                                                                          );
                                                                                                        },
                                                                                                      ) ??
                                                                                                      false;
                                                                                                  if (confirmDialogResponse) {
                                                                                                    logFirebaseEvent('Icon_backend_call');
                                                                                                    await columnAudioTeoriaRecord.reference.delete();
                                                                                                  } else {
                                                                                                    logFirebaseEvent('Icon_bottom_sheet');
                                                                                                    Navigator.pop(context);
                                                                                                  }
                                                                                                },
                                                                                                child: Icon(
                                                                                                  Icons.delete,
                                                                                                  color: FlutterFlowTheme.of(context).error,
                                                                                                  size: 20.0,
                                                                                                ),
                                                                                              ),
                                                                                            ].divide(const SizedBox(width: 10.0)).around(const SizedBox(width: 10.0)),
                                                                                          );
                                                                                        }).divide(const SizedBox(height: 5.0)).around(const SizedBox(height: 5.0)),
                                                                                      );
                                                                                    },
                                                                                  ),
                                                                                ].divide(const SizedBox(height: 10.0)).around(const SizedBox(height: 10.0)),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        if (listViewMeditazioneRecord
                                                                            .isPratica)
                                                                          Padding(
                                                                            padding:
                                                                                const EdgeInsets.all(10.0),
                                                                            child:
                                                                                Container(
                                                                              width: 300.0,
                                                                              decoration: BoxDecoration(
                                                                                color: FlutterFlowTheme.of(context).gradientBottom,
                                                                                borderRadius: BorderRadius.circular(20.0),
                                                                              ),
                                                                              child: Column(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                children: [
                                                                                  StreamBuilder<List<AudioPraticaRecord>>(
                                                                                    stream: queryAudioPraticaRecord(
                                                                                      singleRecord: true,
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
                                                                                      List<AudioPraticaRecord> rowAudioPraticaRecordList = snapshot.data!;
                                                                                      final rowAudioPraticaRecord = rowAudioPraticaRecordList.isNotEmpty ? rowAudioPraticaRecordList.first : null;
                                                                                      return Row(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                                                        children: [
                                                                                          Text(
                                                                                            'Audio Pratica',
                                                                                            style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                          ),
                                                                                          InkWell(
                                                                                            splashColor: Colors.transparent,
                                                                                            focusColor: Colors.transparent,
                                                                                            hoverColor: Colors.transparent,
                                                                                            highlightColor: Colors.transparent,
                                                                                            onTap: () async {
                                                                                              logFirebaseEvent('DASH_BOARD_MEDITAZIONI_Icon_q3bfxcgz_ON_');
                                                                                              logFirebaseEvent('Icon_bottom_sheet');
                                                                                              showModalBottomSheet(
                                                                                                isScrollControlled: true,
                                                                                                backgroundColor: Colors.transparent,
                                                                                                context: context,
                                                                                                builder: (context) {
                                                                                                  return GestureDetector(
                                                                                                    onTap: () => _model.unfocusNode.canRequestFocus ? FocusScope.of(context).requestFocus(_model.unfocusNode) : FocusScope.of(context).unfocus(),
                                                                                                    child: Padding(
                                                                                                      padding: MediaQuery.viewInsetsOf(context),
                                                                                                      child: SizedBox(
                                                                                                        height: MediaQuery.sizeOf(context).height * 1.0,
                                                                                                        child: MeditaPratiacaAudioAdderWidget(
                                                                                                          parameter1: listViewMeditazioneRecord.reference,
                                                                                                        ),
                                                                                                      ),
                                                                                                    ),
                                                                                                  );
                                                                                                },
                                                                                              ).then((value) => safeSetState(() {}));
                                                                                            },
                                                                                            child: Icon(
                                                                                              Icons.add_box,
                                                                                              color: FlutterFlowTheme.of(context).titles,
                                                                                              size: 20.0,
                                                                                            ),
                                                                                          ),
                                                                                        ],
                                                                                      );
                                                                                    },
                                                                                  ),
                                                                                  StreamBuilder<List<AudioTeoriaRecord>>(
                                                                                    stream: queryAudioTeoriaRecord(
                                                                                      singleRecord: true,
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
                                                                                      List<AudioTeoriaRecord> rowAudioTeoriaRecordList = snapshot.data!;
                                                                                      final rowAudioTeoriaRecord = rowAudioTeoriaRecordList.isNotEmpty ? rowAudioTeoriaRecordList.first : null;
                                                                                      return Row(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        mainAxisAlignment: MainAxisAlignment.start,
                                                                                        children: [
                                                                                          Text(
                                                                                            'Titolo',
                                                                                            style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                          ),
                                                                                          Text(
                                                                                            'Durata',
                                                                                            style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                          ),
                                                                                          Text(
                                                                                            'Index',
                                                                                            style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                          ),
                                                                                          Container(
                                                                                            width: 70.0,
                                                                                            decoration: const BoxDecoration(),
                                                                                          ),
                                                                                        ].divide(const SizedBox(width: 20.0)).around(const SizedBox(width: 20.0)),
                                                                                      );
                                                                                    },
                                                                                  ),
                                                                                  StreamBuilder<List<AudioPraticaRecord>>(
                                                                                    stream: queryAudioPraticaRecord(
                                                                                      queryBuilder: (audioPraticaRecord) => audioPraticaRecord
                                                                                          .where(
                                                                                            'LessonTypeRef',
                                                                                            isEqualTo: listViewMeditazioneRecord.reference,
                                                                                          )
                                                                                          .orderBy('index'),
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
                                                                                      List<AudioPraticaRecord> columnAudioPraticaRecordList = snapshot.data!;
                                                                                      return Column(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        children: List.generate(columnAudioPraticaRecordList.length, (columnIndex) {
                                                                                          final columnAudioPraticaRecord = columnAudioPraticaRecordList[columnIndex];
                                                                                          return Row(
                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                            children: [
                                                                                              Container(
                                                                                                width: 50.0,
                                                                                                height: 20.0,
                                                                                                decoration: const BoxDecoration(),
                                                                                                child: InkWell(
                                                                                                  splashColor: Colors.transparent,
                                                                                                  focusColor: Colors.transparent,
                                                                                                  hoverColor: Colors.transparent,
                                                                                                  highlightColor: Colors.transparent,
                                                                                                  onTap: () async {
                                                                                                    logFirebaseEvent('DASH_BOARD_MEDITAZIONI_PAGE_Title_ON_TAP');
                                                                                                    logFirebaseEvent('Title_bottom_sheet');
                                                                                                    await showModalBottomSheet(
                                                                                                      isScrollControlled: true,
                                                                                                      backgroundColor: Colors.transparent,
                                                                                                      enableDrag: false,
                                                                                                      context: context,
                                                                                                      builder: (context) {
                                                                                                        return GestureDetector(
                                                                                                          onTap: () => _model.unfocusNode.canRequestFocus ? FocusScope.of(context).requestFocus(_model.unfocusNode) : FocusScope.of(context).unfocus(),
                                                                                                          child: Padding(
                                                                                                            padding: MediaQuery.viewInsetsOf(context),
                                                                                                            child: SizedBox(
                                                                                                              height: 350.0,
                                                                                                              child: MeditaPraticaAudioTextEditorWidget(
                                                                                                                docMedita: columnAudioPraticaRecord,
                                                                                                              ),
                                                                                                            ),
                                                                                                          ),
                                                                                                        );
                                                                                                      },
                                                                                                    ).then((value) => safeSetState(() {}));
                                                                                                  },
                                                                                                  child: Text(
                                                                                                    columnAudioPraticaRecord.title,
                                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                          fontFamily: 'Istok Web',
                                                                                                          color: FlutterFlowTheme.of(context).longtextColor,
                                                                                                        ),
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                              Container(
                                                                                                width: 50.0,
                                                                                                height: 20.0,
                                                                                                decoration: const BoxDecoration(),
                                                                                                child: Text(
                                                                                                  '${columnAudioPraticaRecord.length} min.',
                                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                        fontFamily: 'Istok Web',
                                                                                                        color: FlutterFlowTheme.of(context).longtextColor,
                                                                                                      ),
                                                                                                ),
                                                                                              ),
                                                                                              Container(
                                                                                                width: 50.0,
                                                                                                height: 20.0,
                                                                                                decoration: const BoxDecoration(),
                                                                                                child: Text(
                                                                                                  columnAudioPraticaRecord.index.toString(),
                                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                        fontFamily: 'Istok Web',
                                                                                                        color: FlutterFlowTheme.of(context).longtextColor,
                                                                                                      ),
                                                                                                ),
                                                                                              ),
                                                                                              Column(
                                                                                                mainAxisSize: MainAxisSize.max,
                                                                                                children: [
                                                                                                  InkWell(
                                                                                                    splashColor: Colors.transparent,
                                                                                                    focusColor: Colors.transparent,
                                                                                                    hoverColor: Colors.transparent,
                                                                                                    highlightColor: Colors.transparent,
                                                                                                    onTap: () async {
                                                                                                      logFirebaseEvent('DASH_BOARD_MEDITAZIONI_Icon_4wn8cj5i_ON_');
                                                                                                      logFirebaseEvent('Icon_bottom_sheet');
                                                                                                      showModalBottomSheet(
                                                                                                        isScrollControlled: true,
                                                                                                        backgroundColor: Colors.transparent,
                                                                                                        context: context,
                                                                                                        builder: (context) {
                                                                                                          return GestureDetector(
                                                                                                            onTap: () => _model.unfocusNode.canRequestFocus ? FocusScope.of(context).requestFocus(_model.unfocusNode) : FocusScope.of(context).unfocus(),
                                                                                                            child: Padding(
                                                                                                              padding: MediaQuery.viewInsetsOf(context),
                                                                                                              child: MeditazioniplayerPraticaWidget(
                                                                                                                audioPathDocPratica: columnAudioPraticaRecord,
                                                                                                                image: valueOrDefault<String>(
                                                                                                                  columnAudioPraticaRecord.imageAudio,
                                                                                                                  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/clarity-f2mtym/assets/e3l8htvsf7nn/2.png',
                                                                                                                ),
                                                                                                              ),
                                                                                                            ),
                                                                                                          );
                                                                                                        },
                                                                                                      ).then((value) => safeSetState(() {}));
                                                                                                    },
                                                                                                    onDoubleTap: () async {
                                                                                                      logFirebaseEvent('DASH_BOARD_MEDITAZIONI_Icon_4wn8cj5i_ON_');
                                                                                                      logFirebaseEvent('Icon_alert_dialog');
                                                                                                      var confirmDialogResponse = await showDialog<bool>(
                                                                                                            context: context,
                                                                                                            builder: (alertDialogContext) {
                                                                                                              return AlertDialog(
                                                                                                                title: const Text('Replace audio file'),
                                                                                                                content: const Text('Du you want to replace the audio file?'),
                                                                                                                actions: [
                                                                                                                  TextButton(
                                                                                                                    onPressed: () => Navigator.pop(alertDialogContext, false),
                                                                                                                    child: const Text('Cancel'),
                                                                                                                  ),
                                                                                                                  TextButton(
                                                                                                                    onPressed: () => Navigator.pop(alertDialogContext, true),
                                                                                                                    child: const Text('Confirm'),
                                                                                                                  ),
                                                                                                                ],
                                                                                                              );
                                                                                                            },
                                                                                                          ) ??
                                                                                                          false;
                                                                                                      if (confirmDialogResponse) {
                                                                                                        logFirebaseEvent('Icon_upload_file_to_firebase');
                                                                                                        final selectedFiles = await selectFiles(
                                                                                                          allowedExtensions: ['mp3'],
                                                                                                          multiFile: false,
                                                                                                        );
                                                                                                        if (selectedFiles != null) {
                                                                                                          setState(() => _model.isDataUploading3 = true);
                                                                                                          var selectedUploadedFiles = <FFUploadedFile>[];

                                                                                                          var downloadUrls = <String>[];
                                                                                                          try {
                                                                                                            showUploadMessage(
                                                                                                              context,
                                                                                                              'Uploading file...',
                                                                                                              showLoading: true,
                                                                                                            );
                                                                                                            selectedUploadedFiles = selectedFiles
                                                                                                                .map((m) => FFUploadedFile(
                                                                                                                      name: m.storagePath.split('/').last,
                                                                                                                      bytes: m.bytes,
                                                                                                                    ))
                                                                                                                .toList();

                                                                                                            downloadUrls = (await Future.wait(
                                                                                                              selectedFiles.map(
                                                                                                                (f) async => await uploadData(f.storagePath, f.bytes),
                                                                                                              ),
                                                                                                            ))
                                                                                                                .where((u) => u != null)
                                                                                                                .map((u) => u!)
                                                                                                                .toList();
                                                                                                          } finally {
                                                                                                            ScaffoldMessenger.of(context).hideCurrentSnackBar();
                                                                                                            _model.isDataUploading3 = false;
                                                                                                          }
                                                                                                          if (selectedUploadedFiles.length == selectedFiles.length && downloadUrls.length == selectedFiles.length) {
                                                                                                            setState(() {
                                                                                                              _model.uploadedLocalFile3 = selectedUploadedFiles.first;
                                                                                                              _model.uploadedFileUrl3 = downloadUrls.first;
                                                                                                            });
                                                                                                            showUploadMessage(
                                                                                                              context,
                                                                                                              'Success!',
                                                                                                            );
                                                                                                          } else {
                                                                                                            setState(() {});
                                                                                                            showUploadMessage(
                                                                                                              context,
                                                                                                              'Failed to upload file',
                                                                                                            );
                                                                                                            return;
                                                                                                          }
                                                                                                        }

                                                                                                        logFirebaseEvent('Icon_backend_call');

                                                                                                        await columnAudioPraticaRecord.reference.update(createAudioPraticaRecordData(
                                                                                                          audioPratica: _model.uploadedFileUrl3,
                                                                                                        ));
                                                                                                      }
                                                                                                    },
                                                                                                    child: Icon(
                                                                                                      Icons.play_circle,
                                                                                                      color: FlutterFlowTheme.of(context).titles,
                                                                                                      size: 20.0,
                                                                                                    ),
                                                                                                  ),
                                                                                                ],
                                                                                              ),
                                                                                              InkWell(
                                                                                                splashColor: Colors.transparent,
                                                                                                focusColor: Colors.transparent,
                                                                                                hoverColor: Colors.transparent,
                                                                                                highlightColor: Colors.transparent,
                                                                                                onTap: () async {
                                                                                                  logFirebaseEvent('DASH_BOARD_MEDITAZIONI_Icon_axwckstb_ON_');
                                                                                                  logFirebaseEvent('Icon_alert_dialog');
                                                                                                  var confirmDialogResponse = await showDialog<bool>(
                                                                                                        context: context,
                                                                                                        builder: (alertDialogContext) {
                                                                                                          return AlertDialog(
                                                                                                            title: const Text('Erase Audio from database'),
                                                                                                            content: const Text('Are you willing to delete this audio?'),
                                                                                                            actions: [
                                                                                                              TextButton(
                                                                                                                onPressed: () => Navigator.pop(alertDialogContext, false),
                                                                                                                child: const Text('Cancel'),
                                                                                                              ),
                                                                                                              TextButton(
                                                                                                                onPressed: () => Navigator.pop(alertDialogContext, true),
                                                                                                                child: const Text('Confirm'),
                                                                                                              ),
                                                                                                            ],
                                                                                                          );
                                                                                                        },
                                                                                                      ) ??
                                                                                                      false;
                                                                                                  if (confirmDialogResponse) {
                                                                                                    logFirebaseEvent('Icon_backend_call');
                                                                                                    await columnAudioPraticaRecord.reference.delete();
                                                                                                  } else {
                                                                                                    logFirebaseEvent('Icon_bottom_sheet');
                                                                                                    Navigator.pop(context);
                                                                                                  }
                                                                                                },
                                                                                                child: Icon(
                                                                                                  Icons.delete,
                                                                                                  color: FlutterFlowTheme.of(context).error,
                                                                                                  size: 20.0,
                                                                                                ),
                                                                                              ),
                                                                                            ].divide(const SizedBox(width: 10.0)).around(const SizedBox(width: 10.0)),
                                                                                          );
                                                                                        }).divide(const SizedBox(height: 5.0)).around(const SizedBox(height: 5.0)),
                                                                                      );
                                                                                    },
                                                                                  ),
                                                                                ].divide(const SizedBox(height: 10.0)).around(const SizedBox(height: 10.0)),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        if (listViewMeditazioneRecord
                                                                            .isAscolti)
                                                                          Padding(
                                                                            padding:
                                                                                const EdgeInsets.all(10.0),
                                                                            child:
                                                                                Container(
                                                                              width: 300.0,
                                                                              decoration: BoxDecoration(
                                                                                color: FlutterFlowTheme.of(context).gradientBottom,
                                                                                borderRadius: BorderRadius.circular(20.0),
                                                                              ),
                                                                              child: Column(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                children: [
                                                                                  StreamBuilder<List<AscoltiMeditaRecord>>(
                                                                                    stream: queryAscoltiMeditaRecord(
                                                                                      singleRecord: true,
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
                                                                                      List<AscoltiMeditaRecord> rowAscoltiMeditaRecordList = snapshot.data!;
                                                                                      final rowAscoltiMeditaRecord = rowAscoltiMeditaRecordList.isNotEmpty ? rowAscoltiMeditaRecordList.first : null;
                                                                                      return Row(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                                                        children: [
                                                                                          Text(
                                                                                            'Audio Ascolti',
                                                                                            style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                          ),
                                                                                          InkWell(
                                                                                            splashColor: Colors.transparent,
                                                                                            focusColor: Colors.transparent,
                                                                                            hoverColor: Colors.transparent,
                                                                                            highlightColor: Colors.transparent,
                                                                                            onTap: () async {
                                                                                              logFirebaseEvent('DASH_BOARD_MEDITAZIONI_Icon_uidz8rty_ON_');
                                                                                              logFirebaseEvent('Icon_bottom_sheet');
                                                                                              showModalBottomSheet(
                                                                                                isScrollControlled: true,
                                                                                                backgroundColor: Colors.transparent,
                                                                                                context: context,
                                                                                                builder: (context) {
                                                                                                  return GestureDetector(
                                                                                                    onTap: () => _model.unfocusNode.canRequestFocus ? FocusScope.of(context).requestFocus(_model.unfocusNode) : FocusScope.of(context).unfocus(),
                                                                                                    child: Padding(
                                                                                                      padding: MediaQuery.viewInsetsOf(context),
                                                                                                      child: SizedBox(
                                                                                                        height: MediaQuery.sizeOf(context).height * 1.0,
                                                                                                        child: AscoltiMeditaAudioAdderWidget(
                                                                                                          parameter1: listViewMeditazioneRecord.reference,
                                                                                                        ),
                                                                                                      ),
                                                                                                    ),
                                                                                                  );
                                                                                                },
                                                                                              ).then((value) => safeSetState(() {}));
                                                                                            },
                                                                                            child: Icon(
                                                                                              Icons.add_box,
                                                                                              color: FlutterFlowTheme.of(context).titles,
                                                                                              size: 20.0,
                                                                                            ),
                                                                                          ),
                                                                                        ],
                                                                                      );
                                                                                    },
                                                                                  ),
                                                                                  StreamBuilder<List<AudioTeoriaRecord>>(
                                                                                    stream: queryAudioTeoriaRecord(
                                                                                      singleRecord: true,
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
                                                                                      List<AudioTeoriaRecord> rowAudioTeoriaRecordList = snapshot.data!;
                                                                                      final rowAudioTeoriaRecord = rowAudioTeoriaRecordList.isNotEmpty ? rowAudioTeoriaRecordList.first : null;
                                                                                      return Row(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        mainAxisAlignment: MainAxisAlignment.start,
                                                                                        children: [
                                                                                          Text(
                                                                                            'Titolo',
                                                                                            style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                          ),
                                                                                          Text(
                                                                                            'Durata',
                                                                                            style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                          ),
                                                                                          Text(
                                                                                            'Index',
                                                                                            style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                          ),
                                                                                          Container(
                                                                                            width: 70.0,
                                                                                            decoration: const BoxDecoration(),
                                                                                          ),
                                                                                        ].divide(const SizedBox(width: 20.0)).around(const SizedBox(width: 20.0)),
                                                                                      );
                                                                                    },
                                                                                  ),
                                                                                  StreamBuilder<List<AscoltiMeditaRecord>>(
                                                                                    stream: queryAscoltiMeditaRecord(
                                                                                      queryBuilder: (ascoltiMeditaRecord) => ascoltiMeditaRecord
                                                                                          .where(
                                                                                            'LessonTypeRef',
                                                                                            isEqualTo: listViewMeditazioneRecord.reference,
                                                                                          )
                                                                                          .orderBy('index'),
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
                                                                                      List<AscoltiMeditaRecord> columnAscoltiMeditaRecordList = snapshot.data!;
                                                                                      return Column(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        children: List.generate(columnAscoltiMeditaRecordList.length, (columnIndex) {
                                                                                          final columnAscoltiMeditaRecord = columnAscoltiMeditaRecordList[columnIndex];
                                                                                          return Row(
                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                            children: [
                                                                                              Container(
                                                                                                width: 50.0,
                                                                                                height: 20.0,
                                                                                                decoration: const BoxDecoration(),
                                                                                                child: InkWell(
                                                                                                  splashColor: Colors.transparent,
                                                                                                  focusColor: Colors.transparent,
                                                                                                  hoverColor: Colors.transparent,
                                                                                                  highlightColor: Colors.transparent,
                                                                                                  onTap: () async {
                                                                                                    logFirebaseEvent('DASH_BOARD_MEDITAZIONI_PAGE_Title_ON_TAP');
                                                                                                    logFirebaseEvent('Title_bottom_sheet');
                                                                                                    await showModalBottomSheet(
                                                                                                      isScrollControlled: true,
                                                                                                      backgroundColor: Colors.transparent,
                                                                                                      enableDrag: false,
                                                                                                      context: context,
                                                                                                      builder: (context) {
                                                                                                        return GestureDetector(
                                                                                                          onTap: () => _model.unfocusNode.canRequestFocus ? FocusScope.of(context).requestFocus(_model.unfocusNode) : FocusScope.of(context).unfocus(),
                                                                                                          child: Padding(
                                                                                                            padding: MediaQuery.viewInsetsOf(context),
                                                                                                            child: SizedBox(
                                                                                                              height: 350.0,
                                                                                                              child: MeditaAscoltiAudioTextEditorWidget(
                                                                                                                docMedita: columnAscoltiMeditaRecord,
                                                                                                              ),
                                                                                                            ),
                                                                                                          ),
                                                                                                        );
                                                                                                      },
                                                                                                    ).then((value) => safeSetState(() {}));
                                                                                                  },
                                                                                                  child: Text(
                                                                                                    columnAscoltiMeditaRecord.title,
                                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                          fontFamily: 'Istok Web',
                                                                                                          color: FlutterFlowTheme.of(context).longtextColor,
                                                                                                        ),
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                              Container(
                                                                                                width: 50.0,
                                                                                                height: 20.0,
                                                                                                decoration: const BoxDecoration(),
                                                                                                child: Text(
                                                                                                  '${columnAscoltiMeditaRecord.length} min.',
                                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                        fontFamily: 'Istok Web',
                                                                                                        color: FlutterFlowTheme.of(context).longtextColor,
                                                                                                      ),
                                                                                                ),
                                                                                              ),
                                                                                              Container(
                                                                                                width: 50.0,
                                                                                                height: 20.0,
                                                                                                decoration: const BoxDecoration(),
                                                                                                child: Text(
                                                                                                  columnAscoltiMeditaRecord.index.toString(),
                                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                        fontFamily: 'Istok Web',
                                                                                                        color: FlutterFlowTheme.of(context).longtextColor,
                                                                                                      ),
                                                                                                ),
                                                                                              ),
                                                                                              Column(
                                                                                                mainAxisSize: MainAxisSize.max,
                                                                                                children: [
                                                                                                  InkWell(
                                                                                                    splashColor: Colors.transparent,
                                                                                                    focusColor: Colors.transparent,
                                                                                                    hoverColor: Colors.transparent,
                                                                                                    highlightColor: Colors.transparent,
                                                                                                    onTap: () async {
                                                                                                      logFirebaseEvent('DASH_BOARD_MEDITAZIONI_Icon_68p7rks9_ON_');
                                                                                                      logFirebaseEvent('Icon_bottom_sheet');
                                                                                                      showModalBottomSheet(
                                                                                                        isScrollControlled: true,
                                                                                                        backgroundColor: Colors.transparent,
                                                                                                        context: context,
                                                                                                        builder: (context) {
                                                                                                          return GestureDetector(
                                                                                                            onTap: () => _model.unfocusNode.canRequestFocus ? FocusScope.of(context).requestFocus(_model.unfocusNode) : FocusScope.of(context).unfocus(),
                                                                                                            child: Padding(
                                                                                                              padding: MediaQuery.viewInsetsOf(context),
                                                                                                              child: MeditazioniplayerAscoltiWidget(
                                                                                                                audioPathDocTeoria: columnAscoltiMeditaRecord,
                                                                                                                image: valueOrDefault<String>(
                                                                                                                  columnAscoltiMeditaRecord.imageAudio,
                                                                                                                  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/clarity-f2mtym/assets/e3l8htvsf7nn/2.png',
                                                                                                                ),
                                                                                                              ),
                                                                                                            ),
                                                                                                          );
                                                                                                        },
                                                                                                      ).then((value) => safeSetState(() {}));
                                                                                                    },
                                                                                                    onDoubleTap: () async {
                                                                                                      logFirebaseEvent('DASH_BOARD_MEDITAZIONI_Icon_68p7rks9_ON_');
                                                                                                      logFirebaseEvent('Icon_alert_dialog');
                                                                                                      var confirmDialogResponse = await showDialog<bool>(
                                                                                                            context: context,
                                                                                                            builder: (alertDialogContext) {
                                                                                                              return AlertDialog(
                                                                                                                title: const Text('Replace audio file'),
                                                                                                                content: const Text('Du you want to replace the audio file?'),
                                                                                                                actions: [
                                                                                                                  TextButton(
                                                                                                                    onPressed: () => Navigator.pop(alertDialogContext, false),
                                                                                                                    child: const Text('Cancel'),
                                                                                                                  ),
                                                                                                                  TextButton(
                                                                                                                    onPressed: () => Navigator.pop(alertDialogContext, true),
                                                                                                                    child: const Text('Confirm'),
                                                                                                                  ),
                                                                                                                ],
                                                                                                              );
                                                                                                            },
                                                                                                          ) ??
                                                                                                          false;
                                                                                                      if (confirmDialogResponse) {
                                                                                                        logFirebaseEvent('Icon_upload_file_to_firebase');
                                                                                                        final selectedFiles = await selectFiles(
                                                                                                          allowedExtensions: ['mp3'],
                                                                                                          multiFile: false,
                                                                                                        );
                                                                                                        if (selectedFiles != null) {
                                                                                                          setState(() => _model.isDataUploading4 = true);
                                                                                                          var selectedUploadedFiles = <FFUploadedFile>[];

                                                                                                          var downloadUrls = <String>[];
                                                                                                          try {
                                                                                                            showUploadMessage(
                                                                                                              context,
                                                                                                              'Uploading file...',
                                                                                                              showLoading: true,
                                                                                                            );
                                                                                                            selectedUploadedFiles = selectedFiles
                                                                                                                .map((m) => FFUploadedFile(
                                                                                                                      name: m.storagePath.split('/').last,
                                                                                                                      bytes: m.bytes,
                                                                                                                    ))
                                                                                                                .toList();

                                                                                                            downloadUrls = (await Future.wait(
                                                                                                              selectedFiles.map(
                                                                                                                (f) async => await uploadData(f.storagePath, f.bytes),
                                                                                                              ),
                                                                                                            ))
                                                                                                                .where((u) => u != null)
                                                                                                                .map((u) => u!)
                                                                                                                .toList();
                                                                                                          } finally {
                                                                                                            ScaffoldMessenger.of(context).hideCurrentSnackBar();
                                                                                                            _model.isDataUploading4 = false;
                                                                                                          }
                                                                                                          if (selectedUploadedFiles.length == selectedFiles.length && downloadUrls.length == selectedFiles.length) {
                                                                                                            setState(() {
                                                                                                              _model.uploadedLocalFile4 = selectedUploadedFiles.first;
                                                                                                              _model.uploadedFileUrl4 = downloadUrls.first;
                                                                                                            });
                                                                                                            showUploadMessage(
                                                                                                              context,
                                                                                                              'Success!',
                                                                                                            );
                                                                                                          } else {
                                                                                                            setState(() {});
                                                                                                            showUploadMessage(
                                                                                                              context,
                                                                                                              'Failed to upload file',
                                                                                                            );
                                                                                                            return;
                                                                                                          }
                                                                                                        }

                                                                                                        logFirebaseEvent('Icon_backend_call');

                                                                                                        await columnAscoltiMeditaRecord.reference.update(createAscoltiMeditaRecordData(
                                                                                                          audio: _model.uploadedFileUrl4,
                                                                                                        ));
                                                                                                      }
                                                                                                    },
                                                                                                    child: Icon(
                                                                                                      Icons.play_circle,
                                                                                                      color: FlutterFlowTheme.of(context).titles,
                                                                                                      size: 20.0,
                                                                                                    ),
                                                                                                  ),
                                                                                                ],
                                                                                              ),
                                                                                              InkWell(
                                                                                                splashColor: Colors.transparent,
                                                                                                focusColor: Colors.transparent,
                                                                                                hoverColor: Colors.transparent,
                                                                                                highlightColor: Colors.transparent,
                                                                                                onTap: () async {
                                                                                                  logFirebaseEvent('DASH_BOARD_MEDITAZIONI_Icon_7vs42ozi_ON_');
                                                                                                  logFirebaseEvent('Icon_alert_dialog');
                                                                                                  var confirmDialogResponse = await showDialog<bool>(
                                                                                                        context: context,
                                                                                                        builder: (alertDialogContext) {
                                                                                                          return AlertDialog(
                                                                                                            title: const Text('Erase Audio from database'),
                                                                                                            content: const Text('Are you willing to delete this audio?'),
                                                                                                            actions: [
                                                                                                              TextButton(
                                                                                                                onPressed: () => Navigator.pop(alertDialogContext, false),
                                                                                                                child: const Text('Cancel'),
                                                                                                              ),
                                                                                                              TextButton(
                                                                                                                onPressed: () => Navigator.pop(alertDialogContext, true),
                                                                                                                child: const Text('Confirm'),
                                                                                                              ),
                                                                                                            ],
                                                                                                          );
                                                                                                        },
                                                                                                      ) ??
                                                                                                      false;
                                                                                                  if (confirmDialogResponse) {
                                                                                                    logFirebaseEvent('Icon_backend_call');
                                                                                                    await columnAscoltiMeditaRecord.reference.delete();
                                                                                                  } else {
                                                                                                    logFirebaseEvent('Icon_bottom_sheet');
                                                                                                    Navigator.pop(context);
                                                                                                  }
                                                                                                },
                                                                                                child: Icon(
                                                                                                  Icons.delete,
                                                                                                  color: FlutterFlowTheme.of(context).error,
                                                                                                  size: 20.0,
                                                                                                ),
                                                                                              ),
                                                                                            ].divide(const SizedBox(width: 10.0)).around(const SizedBox(width: 10.0)),
                                                                                          );
                                                                                        }).divide(const SizedBox(height: 5.0)).around(const SizedBox(height: 5.0)),
                                                                                      );
                                                                                    },
                                                                                  ),
                                                                                ].divide(const SizedBox(height: 10.0)).around(const SizedBox(height: 10.0)),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    );
                                                  },
                                                );
                                              },
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                          );
                        },
                      ),
                    ),
                  ]
                      .divide(const SizedBox(height: 10.0))
                      .around(const SizedBox(height: 10.0)),
                ),
              ),
            ),
          ),
        ));
  }
}
