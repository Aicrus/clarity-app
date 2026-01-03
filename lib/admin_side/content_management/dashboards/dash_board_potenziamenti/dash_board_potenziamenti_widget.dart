// ignore_for_file: unused_local_variable

import '/admin_side/content_management/ascolti_pot_audio_adder/ascolti_pot_audio_adder_widget.dart';
import '/admin_side/content_management/dashboards/potenziamenti_lesson_creator/potenziamenti_lesson_creator_widget.dart';
import '/admin_side/content_management/pot_pratiaca_audio_adder/pot_pratiaca_audio_adder_widget.dart';
import '/admin_side/content_management/pot_teoria_audio_adder/pot_teoria_audio_adder_widget.dart';
import '/admin_side/content_management/potenzia_audio_text_file_editor/potenzia_ascolti_audio_text_editor/potenzia_ascolti_audio_text_editor_widget.dart';
import '/admin_side/content_management/potenzia_audio_text_file_editor/potenzia_pratica_audio_text_editor/potenzia_pratica_audio_text_editor_widget.dart';
import '/admin_side/content_management/potenzia_audio_text_file_editor/potenzia_teoria_audio_text_editor/potenzia_teoria_audio_text_editor_widget.dart';
import '/admin_side/content_management/text_medita_editor/blocco_tematico_potenzia_edit/blocco_tematico_potenzia_edit_widget.dart';
import '/admin_side/content_management/text_medita_editor/potenzia_lesson_text_field_editor/potenzia_lesson_text_field_editor_widget.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import '/user_side/components/audio_player/potenziamentiplayer_ascolti/potenziamentiplayer_ascolti_widget.dart';
import '/user_side/components/audio_player/potenziamentiplayer_pratica/potenziamentiplayer_pratica_widget.dart';
import '/user_side/components/audio_player/potenziamentiplayer_teoria/potenziamentiplayer_teoria_widget.dart';
import 'package:styled_divider/styled_divider.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'dash_board_potenziamenti_model.dart';
export 'dash_board_potenziamenti_model.dart';

class DashBoardPotenziamentiWidget extends StatefulWidget {
  const DashBoardPotenziamentiWidget({super.key});

  @override
  State<DashBoardPotenziamentiWidget> createState() =>
      _DashBoardPotenziamentiWidgetState();
}

class _DashBoardPotenziamentiWidgetState
    extends State<DashBoardPotenziamentiWidget> {
  late DashBoardPotenziamentiModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DashBoardPotenziamentiModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'DashBoardPotenziamenti'});
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
        title: 'DashBoardPotenziamenti',
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
                                      'Gestione Potenziamenti',
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
                                              'DASH_BOARD_POTENZIAMENTI_MEDITAZIONI_BTN');
                                          logFirebaseEvent(
                                              'Button_navigate_to');

                                          context.pushNamed(
                                            'DashBoardMeditazioni',
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
                                        text: 'Meditazioni',
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
                                              'DASH_BOARD_POTENZIAMENTI_REGISTRARE_IL_C');
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
                                              'DASH_BOARD_POTENZIAMENTI_Icon_1weuznp1_O');
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
                                        'DASH_BOARD_POTENZIAMENTI_Icon_vscuxc2n_O');
                                    logFirebaseEvent('Icon_navigate_to');

                                    context.goNamed(
                                      'homeP',
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
                                isEqualTo: 'Potenziamenti',
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
                                                        .spaceAround,
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
                                                          'DASH_BOARD_POTENZIAMENTI_Icon_wwjrty2w_O');
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
                                                                    BloccoTematicoPotenziaEditWidget(
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
                                                          'DASH_BOARD_POTENZIAMENTI_Icon_2pdvrq0h_O');
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
                                                          'DASH_BOARD_POTENZIAMENTI_Icon_tolaw8b3_O');
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
                                                                  PotenziamentiLessonCreatorWidget(
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
                                                      color: FlutterFlowTheme
                                                              .of(context)
                                                          .iconsAndToggleButtons,
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
                                                                    'DASH_BOARD_POTENZIAMENTI_liked_ON_TAP');
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
                                                                    'DASH_BOARD_POTENZIAMENTI_notliked_ON_TAP');
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
                                                        const SizedBox(width: 10.0))
                                                    .around(
                                                        const SizedBox(width: 10.0)),
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
                                                0.7,
                                            decoration: const BoxDecoration(),
                                            child: StreamBuilder<
                                                List<PotenziamentiRecord>>(
                                              stream: queryPotenziamentiRecord(
                                                parent: listViewLessonsRecord
                                                    .reference,
                                                queryBuilder:
                                                    (potenziamentiRecord) =>
                                                        potenziamentiRecord
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
                                                List<PotenziamentiRecord>
                                                    listViewPotenziamentiRecordList =
                                                    snapshot.data!;
                                                return ListView.separated(
                                                  padding: const EdgeInsets.symmetric(
                                                      horizontal: 10.0),
                                                  primary: false,
                                                  scrollDirection:
                                                      Axis.horizontal,
                                                  itemCount:
                                                      listViewPotenziamentiRecordList
                                                          .length,
                                                  separatorBuilder: (_, __) =>
                                                      const SizedBox(width: 10.0),
                                                  itemBuilder:
                                                      (context, listViewIndex) {
                                                    final listViewPotenziamentiRecord =
                                                        listViewPotenziamentiRecordList[
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
                                                                        Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
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
                                                                                      listViewPotenziamentiRecord.image,
                                                                                      width: 350.0,
                                                                                      height: 220.0,
                                                                                      fit: BoxFit.cover,
                                                                                    ),
                                                                                  ),
                                                                                  if (listViewPotenziamentiRecord.premium)
                                                                                    Stack(
                                                                                      children: [
                                                                                        Opacity(
                                                                                          opacity: 0.5,
                                                                                          child: Align(
                                                                                            alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                            child: SvgPicture.asset(
                                                                                              'assets/images/LOCK.svg',
                                                                                              width: 50.0,
                                                                                              fit: BoxFit.scaleDown,
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
                                                                                logFirebaseEvent('DASH_BOARD_POTENZIAMENTI_UPDATE_COVER_BT');
                                                                                logFirebaseEvent('Button_upload_media_to_firebase');
                                                                                final selectedMedia = await selectMediaWithSourceBottomSheet(
                                                                                  context: context,
                                                                                  maxWidth: 1240.00,
                                                                                  maxHeight: 1920.00,
                                                                                  imageQuality: 50,
                                                                                  allowPhoto: true,
                                                                                );
                                                                                if (selectedMedia != null && selectedMedia.every((m) => validateFileFormat(m.storagePath, context))) {
                                                                                  setState(() => _model.isDataUploading1 = true);
                                                                                  var selectedUploadedFiles = <FFUploadedFile>[];

                                                                                  var downloadUrls = <String>[];
                                                                                  try {
                                                                                    showUploadMessage(
                                                                                      context,
                                                                                      'Uploading file...',
                                                                                      showLoading: true,
                                                                                    );
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
                                                                                    ScaffoldMessenger.of(context).hideCurrentSnackBar();
                                                                                    _model.isDataUploading1 = false;
                                                                                  }
                                                                                  if (selectedUploadedFiles.length == selectedMedia.length && downloadUrls.length == selectedMedia.length) {
                                                                                    setState(() {
                                                                                      _model.uploadedLocalFile1 = selectedUploadedFiles.first;
                                                                                      _model.uploadedFileUrl1 = downloadUrls.first;
                                                                                    });
                                                                                    showUploadMessage(context, 'Success!');
                                                                                  } else {
                                                                                    setState(() {});
                                                                                    showUploadMessage(context, 'Failed to upload data');
                                                                                    return;
                                                                                  }
                                                                                }

                                                                                logFirebaseEvent('Button_backend_call');

                                                                                await listViewPotenziamentiRecord.reference.update(createPotenziamentiRecordData(
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
                                                                        SizedBox(
                                                                          width:
                                                                              300.0,
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
                                                                              315.0,
                                                                          decoration:
                                                                              const BoxDecoration(),
                                                                          child:
                                                                              Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.spaceBetween,
                                                                            children:
                                                                                [
                                                                              Flexible(
                                                                                child: Align(
                                                                                  alignment: const AlignmentDirectional(-1.0, 0.0),
                                                                                  child: Column(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                                                    children: [
                                                                                      Text(
                                                                                        listViewPotenziamentiRecord.title,
                                                                                        maxLines: 3,
                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                              fontFamily: 'Istok Web',
                                                                                              fontSize: 20.0,
                                                                                            ),
                                                                                      ),
                                                                                      AutoSizeText(
                                                                                        listViewPotenziamentiRecord.susubtitle.maybeHandleOverflow(
                                                                                          maxChars: 15,
                                                                                          replacement: '…',
                                                                                        ),
                                                                                        maxLines: 3,
                                                                                        style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                      ),
                                                                                      AutoSizeText(
                                                                                        'Index : ${listViewPotenziamentiRecord.day}'.maybeHandleOverflow(
                                                                                          maxChars: 15,
                                                                                          replacement: '…',
                                                                                        ),
                                                                                        maxLines: 3,
                                                                                        style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                      ),
                                                                                      Text(
                                                                                        'Length : ${listViewPotenziamentiRecord.day}min.',
                                                                                        maxLines: 3,
                                                                                        style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                      ),
                                                                                    ].divide(const SizedBox(height: 5.0)),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                              Align(
                                                                                alignment: const AlignmentDirectional(1.0, 0.0),
                                                                                child: InkWell(
                                                                                  splashColor: Colors.transparent,
                                                                                  focusColor: Colors.transparent,
                                                                                  hoverColor: Colors.transparent,
                                                                                  highlightColor: Colors.transparent,
                                                                                  onTap: () async {
                                                                                    logFirebaseEvent('DASH_BOARD_POTENZIAMENTI_Icon_npzr0wsu_O');
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
                                                                                      await listViewPotenziamentiRecord.reference.delete();
                                                                                    }
                                                                                  },
                                                                                  child: Icon(
                                                                                    Icons.delete,
                                                                                    color: FlutterFlowTheme.of(context).error,
                                                                                    size: 20.0,
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
                                                                                  logFirebaseEvent('DASH_BOARD_POTENZIAMENTI_edit_note_ICN_O');
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
                                                                                            child: PotenziaLessonTextFieldEditorWidget(
                                                                                              docPot: listViewPotenziamentiRecord,
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                      );
                                                                                    },
                                                                                  ).then((value) => safeSetState(() {}));
                                                                                },
                                                                              ),
                                                                            ].divide(const SizedBox(width: 5.0)),
                                                                          ),
                                                                        ),
                                                                        SizedBox(
                                                                          width:
                                                                              300.0,
                                                                          child:
                                                                              Divider(
                                                                            thickness:
                                                                                1.0,
                                                                            color:
                                                                                FlutterFlowTheme.of(context).longtextColor,
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
                                                                                      if (listViewPotenziamentiRecord.premium)
                                                                                        InkWell(
                                                                                          splashColor: Colors.transparent,
                                                                                          focusColor: Colors.transparent,
                                                                                          hoverColor: Colors.transparent,
                                                                                          highlightColor: Colors.transparent,
                                                                                          onTap: () async {
                                                                                            logFirebaseEvent('DASH_BOARD_POTENZIAMENTI_liked_ON_TAP');
                                                                                            logFirebaseEvent('liked_backend_call');

                                                                                            await listViewPotenziamentiRecord.reference.update(createPotenziamentiRecordData(
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
                                                                                      if (!listViewPotenziamentiRecord.premium)
                                                                                        InkWell(
                                                                                          splashColor: Colors.transparent,
                                                                                          focusColor: Colors.transparent,
                                                                                          hoverColor: Colors.transparent,
                                                                                          highlightColor: Colors.transparent,
                                                                                          onTap: () async {
                                                                                            logFirebaseEvent('DASH_BOARD_POTENZIAMENTI_notliked_ON_TAP');
                                                                                            logFirebaseEvent('notliked_backend_call');

                                                                                            await listViewPotenziamentiRecord.reference.update(createPotenziamentiRecordData(
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
                                                                                width: 300.0,
                                                                                child: Divider(
                                                                                  thickness: 1.0,
                                                                                  color: FlutterFlowTheme.of(context).longtextColor,
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
                                                                                      if (listViewPotenziamentiRecord.isTeoria)
                                                                                        InkWell(
                                                                                          splashColor: Colors.transparent,
                                                                                          focusColor: Colors.transparent,
                                                                                          hoverColor: Colors.transparent,
                                                                                          highlightColor: Colors.transparent,
                                                                                          onTap: () async {
                                                                                            logFirebaseEvent('DASH_BOARD_POTENZIAMENTI_liked_ON_TAP');
                                                                                            logFirebaseEvent('liked_backend_call');

                                                                                            await listViewPotenziamentiRecord.reference.update(createPotenziamentiRecordData(
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
                                                                                      if (!listViewPotenziamentiRecord.isTeoria)
                                                                                        InkWell(
                                                                                          splashColor: Colors.transparent,
                                                                                          focusColor: Colors.transparent,
                                                                                          hoverColor: Colors.transparent,
                                                                                          highlightColor: Colors.transparent,
                                                                                          onTap: () async {
                                                                                            logFirebaseEvent('DASH_BOARD_POTENZIAMENTI_notliked_ON_TAP');
                                                                                            logFirebaseEvent('notliked_backend_call');

                                                                                            await listViewPotenziamentiRecord.reference.update(createPotenziamentiRecordData(
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
                                                                                width: 300.0,
                                                                                child: Divider(
                                                                                  thickness: 1.0,
                                                                                  color: FlutterFlowTheme.of(context).longtextColor,
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
                                                                                      if (listViewPotenziamentiRecord.isPratica)
                                                                                        InkWell(
                                                                                          splashColor: Colors.transparent,
                                                                                          focusColor: Colors.transparent,
                                                                                          hoverColor: Colors.transparent,
                                                                                          highlightColor: Colors.transparent,
                                                                                          onTap: () async {
                                                                                            logFirebaseEvent('DASH_BOARD_POTENZIAMENTI_liked_ON_TAP');
                                                                                            logFirebaseEvent('liked_backend_call');

                                                                                            await listViewPotenziamentiRecord.reference.update(createPotenziamentiRecordData(
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
                                                                                      if (!listViewPotenziamentiRecord.isPratica)
                                                                                        InkWell(
                                                                                          splashColor: Colors.transparent,
                                                                                          focusColor: Colors.transparent,
                                                                                          hoverColor: Colors.transparent,
                                                                                          highlightColor: Colors.transparent,
                                                                                          onTap: () async {
                                                                                            logFirebaseEvent('DASH_BOARD_POTENZIAMENTI_notliked_ON_TAP');
                                                                                            logFirebaseEvent('notliked_backend_call');

                                                                                            await listViewPotenziamentiRecord.reference.update(createPotenziamentiRecordData(
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
                                                                                width: 300.0,
                                                                                child: Divider(
                                                                                  thickness: 1.0,
                                                                                  color: FlutterFlowTheme.of(context).longtextColor,
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
                                                                                      if (listViewPotenziamentiRecord.isAscolti)
                                                                                        InkWell(
                                                                                          splashColor: Colors.transparent,
                                                                                          focusColor: Colors.transparent,
                                                                                          hoverColor: Colors.transparent,
                                                                                          highlightColor: Colors.transparent,
                                                                                          onTap: () async {
                                                                                            logFirebaseEvent('DASH_BOARD_POTENZIAMENTI_liked_ON_TAP');
                                                                                            logFirebaseEvent('liked_backend_call');

                                                                                            await listViewPotenziamentiRecord.reference.update(createPotenziamentiRecordData(
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
                                                                                      if (!listViewPotenziamentiRecord.isAscolti)
                                                                                        InkWell(
                                                                                          splashColor: Colors.transparent,
                                                                                          focusColor: Colors.transparent,
                                                                                          hoverColor: Colors.transparent,
                                                                                          highlightColor: Colors.transparent,
                                                                                          onTap: () async {
                                                                                            logFirebaseEvent('DASH_BOARD_POTENZIAMENTI_notliked_ON_TAP');
                                                                                            logFirebaseEvent('notliked_backend_call');

                                                                                            await listViewPotenziamentiRecord.reference.update(createPotenziamentiRecordData(
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
                                                                              SizedBox(
                                                                                width: 300.0,
                                                                                child: Divider(
                                                                                  thickness: 1.0,
                                                                                  color: FlutterFlowTheme.of(context).longtextColor,
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                        if (listViewPotenziamentiRecord
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
                                                                                  StreamBuilder<List<AudioTeoriaPotenziaRecord>>(
                                                                                    stream: queryAudioTeoriaPotenziaRecord(
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
                                                                                      List<AudioTeoriaPotenziaRecord> rowAudioTeoriaPotenziaRecordList = snapshot.data!;
                                                                                      final rowAudioTeoriaPotenziaRecord = rowAudioTeoriaPotenziaRecordList.isNotEmpty ? rowAudioTeoriaPotenziaRecordList.first : null;
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
                                                                                              logFirebaseEvent('DASH_BOARD_POTENZIAMENTI_Icon_a1gexjd5_O');
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
                                                                                                      child: PotTeoriaAudioAdderWidget(
                                                                                                        parameter1: listViewPotenziamentiRecord.reference,
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
                                                                                  StreamBuilder<List<AudioTeoriaPotenziaRecord>>(
                                                                                    stream: queryAudioTeoriaPotenziaRecord(
                                                                                      queryBuilder: (audioTeoriaPotenziaRecord) => audioTeoriaPotenziaRecord
                                                                                          .where(
                                                                                            'LessonTypeRef',
                                                                                            isEqualTo: listViewPotenziamentiRecord.reference,
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
                                                                                      List<AudioTeoriaPotenziaRecord> columnAudioTeoriaPotenziaRecordList = snapshot.data!;
                                                                                      return Column(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        children: List.generate(columnAudioTeoriaPotenziaRecordList.length, (columnIndex) {
                                                                                          final columnAudioTeoriaPotenziaRecord = columnAudioTeoriaPotenziaRecordList[columnIndex];
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
                                                                                                    logFirebaseEvent('DASH_BOARD_POTENZIAMENTI_Title_ON_TAP');
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
                                                                                                              child: PotenziaTeoriaAudioTextEditorWidget(
                                                                                                                docMedita: columnAudioTeoriaPotenziaRecord,
                                                                                                              ),
                                                                                                            ),
                                                                                                          ),
                                                                                                        );
                                                                                                      },
                                                                                                    ).then((value) => safeSetState(() {}));
                                                                                                  },
                                                                                                  child: Text(
                                                                                                    columnAudioTeoriaPotenziaRecord.title,
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
                                                                                                  '${columnAudioTeoriaPotenziaRecord.length} min.',
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
                                                                                                  columnAudioTeoriaPotenziaRecord.index.toString(),
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
                                                                                                      logFirebaseEvent('DASH_BOARD_POTENZIAMENTI_Icon_ne1etair_O');
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
                                                                                                              child: PotenziamentiplayerTeoriaWidget(
                                                                                                                audioPathDocPratica: columnAudioTeoriaPotenziaRecord,
                                                                                                                image: valueOrDefault<String>(
                                                                                                                  columnAudioTeoriaPotenziaRecord.imageAudio,
                                                                                                                  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/clarity-f2mtym/assets/e3l8htvsf7nn/2.png',
                                                                                                                ),
                                                                                                              ),
                                                                                                            ),
                                                                                                          );
                                                                                                        },
                                                                                                      ).then((value) => safeSetState(() {}));
                                                                                                    },
                                                                                                    onDoubleTap: () async {
                                                                                                      logFirebaseEvent('DASH_BOARD_POTENZIAMENTI_Icon_ne1etair_O');
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

                                                                                                        await columnAudioTeoriaPotenziaRecord.reference.update(createAudioTeoriaPotenziaRecordData(
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
                                                                                                  logFirebaseEvent('DASH_BOARD_POTENZIAMENTI_Icon_cku8g9pj_O');
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
                                                                                                    await columnAudioTeoriaPotenziaRecord.reference.delete();
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
                                                                        if (listViewPotenziamentiRecord
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
                                                                                  StreamBuilder<List<AudioPraticaPotenziaRecord>>(
                                                                                    stream: queryAudioPraticaPotenziaRecord(
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
                                                                                      List<AudioPraticaPotenziaRecord> rowAudioPraticaPotenziaRecordList = snapshot.data!;
                                                                                      final rowAudioPraticaPotenziaRecord = rowAudioPraticaPotenziaRecordList.isNotEmpty ? rowAudioPraticaPotenziaRecordList.first : null;
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
                                                                                              logFirebaseEvent('DASH_BOARD_POTENZIAMENTI_Icon_05ilwzx7_O');
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
                                                                                                      child: PotPratiacaAudioAdderWidget(
                                                                                                        parameter1: listViewPotenziamentiRecord.reference,
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
                                                                                  StreamBuilder<List<AudioPraticaPotenziaRecord>>(
                                                                                    stream: queryAudioPraticaPotenziaRecord(
                                                                                      queryBuilder: (audioPraticaPotenziaRecord) => audioPraticaPotenziaRecord
                                                                                          .where(
                                                                                            'LessonTypeRef',
                                                                                            isEqualTo: listViewPotenziamentiRecord.reference,
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
                                                                                      List<AudioPraticaPotenziaRecord> columnAudioPraticaPotenziaRecordList = snapshot.data!;
                                                                                      return Column(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        children: List.generate(columnAudioPraticaPotenziaRecordList.length, (columnIndex) {
                                                                                          final columnAudioPraticaPotenziaRecord = columnAudioPraticaPotenziaRecordList[columnIndex];
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
                                                                                                    logFirebaseEvent('DASH_BOARD_POTENZIAMENTI_Title_ON_TAP');
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
                                                                                                              child: PotenziaPraticaAudioTextEditorWidget(
                                                                                                                docMedita: columnAudioPraticaPotenziaRecord,
                                                                                                              ),
                                                                                                            ),
                                                                                                          ),
                                                                                                        );
                                                                                                      },
                                                                                                    ).then((value) => safeSetState(() {}));
                                                                                                  },
                                                                                                  child: Text(
                                                                                                    columnAudioPraticaPotenziaRecord.title,
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
                                                                                                  '${columnAudioPraticaPotenziaRecord.length} min.',
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
                                                                                                  columnAudioPraticaPotenziaRecord.index.toString(),
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
                                                                                                      logFirebaseEvent('DASH_BOARD_POTENZIAMENTI_Icon_pfnhf1on_O');
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
                                                                                                              child: PotenziamentiplayerPraticaWidget(
                                                                                                                audioPathDocPratica: columnAudioPraticaPotenziaRecord,
                                                                                                                image: valueOrDefault<String>(
                                                                                                                  columnAudioPraticaPotenziaRecord.imageAudio,
                                                                                                                  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/clarity-f2mtym/assets/e3l8htvsf7nn/2.png',
                                                                                                                ),
                                                                                                              ),
                                                                                                            ),
                                                                                                          );
                                                                                                        },
                                                                                                      ).then((value) => safeSetState(() {}));
                                                                                                    },
                                                                                                    onDoubleTap: () async {
                                                                                                      logFirebaseEvent('DASH_BOARD_POTENZIAMENTI_Icon_pfnhf1on_O');
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

                                                                                                        await columnAudioPraticaPotenziaRecord.reference.update(createAudioPraticaPotenziaRecordData(
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
                                                                                                  logFirebaseEvent('DASH_BOARD_POTENZIAMENTI_Icon_twvqyis6_O');
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
                                                                                                    await columnAudioPraticaPotenziaRecord.reference.delete();
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
                                                                        if (listViewPotenziamentiRecord
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
                                                                                  StreamBuilder<List<AscoltiPotenziaRecord>>(
                                                                                    stream: queryAscoltiPotenziaRecord(
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
                                                                                      List<AscoltiPotenziaRecord> rowAscoltiPotenziaRecordList = snapshot.data!;
                                                                                      final rowAscoltiPotenziaRecord = rowAscoltiPotenziaRecordList.isNotEmpty ? rowAscoltiPotenziaRecordList.first : null;
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
                                                                                              logFirebaseEvent('DASH_BOARD_POTENZIAMENTI_Icon_djjfm1t6_O');
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
                                                                                                      child: AscoltiPotAudioAdderWidget(
                                                                                                        parameter1: listViewPotenziamentiRecord.reference,
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
                                                                                  StreamBuilder<List<AscoltiPotenziaRecord>>(
                                                                                    stream: queryAscoltiPotenziaRecord(
                                                                                      queryBuilder: (ascoltiPotenziaRecord) => ascoltiPotenziaRecord
                                                                                          .where(
                                                                                            'LessonTypeRef',
                                                                                            isEqualTo: listViewPotenziamentiRecord.reference,
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
                                                                                      List<AscoltiPotenziaRecord> columnAscoltiPotenziaRecordList = snapshot.data!;
                                                                                      return Column(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        children: List.generate(columnAscoltiPotenziaRecordList.length, (columnIndex) {
                                                                                          final columnAscoltiPotenziaRecord = columnAscoltiPotenziaRecordList[columnIndex];
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
                                                                                                    logFirebaseEvent('DASH_BOARD_POTENZIAMENTI_Title_ON_TAP');
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
                                                                                                              child: PotenziaAscoltiAudioTextEditorWidget(
                                                                                                                docMedita: columnAscoltiPotenziaRecord,
                                                                                                              ),
                                                                                                            ),
                                                                                                          ),
                                                                                                        );
                                                                                                      },
                                                                                                    ).then((value) => safeSetState(() {}));
                                                                                                  },
                                                                                                  child: Text(
                                                                                                    columnAscoltiPotenziaRecord.title,
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
                                                                                                  '${columnAscoltiPotenziaRecord.length} min.',
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
                                                                                                  columnAscoltiPotenziaRecord.index.toString(),
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
                                                                                                      logFirebaseEvent('DASH_BOARD_POTENZIAMENTI_Icon_7dzbdb9y_O');
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
                                                                                                              child: PotenziamentiplayerAscoltiWidget(
                                                                                                                audioPathDocPratica: columnAscoltiPotenziaRecord,
                                                                                                                image: valueOrDefault<String>(
                                                                                                                  columnAscoltiPotenziaRecord.imageAudio,
                                                                                                                  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/clarity-f2mtym/assets/e3l8htvsf7nn/2.png',
                                                                                                                ),
                                                                                                              ),
                                                                                                            ),
                                                                                                          );
                                                                                                        },
                                                                                                      ).then((value) => safeSetState(() {}));
                                                                                                    },
                                                                                                    onDoubleTap: () async {
                                                                                                      logFirebaseEvent('DASH_BOARD_POTENZIAMENTI_Icon_7dzbdb9y_O');
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

                                                                                                        await columnAscoltiPotenziaRecord.reference.update(createAscoltiPotenziaRecordData(
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
                                                                                                  logFirebaseEvent('DASH_BOARD_POTENZIAMENTI_Icon_oq2tcajm_O');
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
                                                                                                    await columnAscoltiPotenziaRecord.reference.delete();
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
