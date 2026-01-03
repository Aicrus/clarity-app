import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/user_side/components/nav_bar/medita_nav_bar/medita_nav_bar_widget.dart';
import '/user_side/components/rating_modal/rating_modal_widget.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'home_m_model.dart';
export 'home_m_model.dart';

class HomeMWidget extends StatefulWidget {
  final bool? showRatingModal;
  const HomeMWidget({super.key, this.showRatingModal = false});

  @override
  State<HomeMWidget> createState() => _HomeMWidgetState();
}

class _HomeMWidgetState extends State<HomeMWidget> {
  late HomeMModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomeMModel());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'homeM'});
    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      logFirebaseEvent('HOME_M_PAGE_homeM_ON_INIT_STATE');
      logFirebaseEvent('homeM_backend_call');
      bool hadEvaluateApp =
          valueOrDefault(currentUserDocument?.hadEvaluateApp, false);
      bool showEvaluateApp = FFAppState().showEvaluateApp;
      if ((valueOrDefault(currentUserDocument?.howManyOpen, 0) == 3 ||
              widget.showRatingModal != null && widget.showRatingModal!) &&
          !hadEvaluateApp &&
          !showEvaluateApp) {
        logFirebaseEvent('homeM_bottom_sheet');
        await showModalBottomSheet(
          isScrollControlled: true,
          backgroundColor: Colors.transparent,
          useSafeArea: true,
          context: context,
          builder: (context) {
            FFAppState().showEvaluateApp = true;
            return GestureDetector(
              onTap: () => _model.unfocusNode.canRequestFocus
                  ? FocusScope.of(context).requestFocus(_model.unfocusNode)
                  : FocusScope.of(context).unfocus(),
              child: Padding(
                padding: MediaQuery.viewInsetsOf(context),
                child: const RatingModalWidget(),
              ),
            );
          },
        ).then((value) => safeSetState(() {}));
      } else {
        return;
      }
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // context.watch<FFAppState>();

    return Title(
        title: 'homeM',
        color: FlutterFlowTheme.of(context).primary.withAlpha(0XFF),
        child: GestureDetector(
          onTap: () => _model.unfocusNode.canRequestFocus
              ? FocusScope.of(context).requestFocus(_model.unfocusNode)
              : FocusScope.of(context).unfocus(),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).gradientTop,
            appBar: AppBar(
              backgroundColor: FlutterFlowTheme.of(context).topNavBarBGColor,
              automaticallyImplyLeading: false,
              title: Text(
                'Meditazione',
                style: FlutterFlowTheme.of(context).titleSmall.override(
                      fontFamily: 'Istok Web',
                      color: FlutterFlowTheme.of(context).topNavBarTextColor,
                    ),
              ),
              actions: [
                Padding(
                  padding:
                      const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 20.0, 0.0),
                  child: InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      logFirebaseEvent('HOME_M_PAGE_Image_d5do9r9t_ON_TAP');
                      logFirebaseEvent('Image_navigate_to');

                      context.pushNamed(
                        'reminder',
                        extra: <String, dynamic>{
                          kTransitionInfoKey: const TransitionInfo(
                            hasTransition: true,
                            transitionType: PageTransitionType.fade,
                            duration: Duration(milliseconds: 0),
                          ),
                        },
                      );
                    },
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: SvgPicture.asset(
                        Theme.of(context).brightness == Brightness.dark
                            ? 'assets/images/Promemoria_copie.svg'
                            : 'assets/images/Promemorialght.svg',
                        width: 28.0,
                        height: 28.0,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ),
              ],
              centerTitle: true,
              elevation: 2.0,
            ),
            body: Stack(
              children: [
                Container(
                  width: MediaQuery.sizeOf(context).width * 1.0,
                  height: MediaQuery.sizeOf(context).height * 0.95,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        FlutterFlowTheme.of(context).gradientTop,
                        FlutterFlowTheme.of(context).gradientBottom
                      ],
                      stops: const [0.5, 1.0],
                      begin: const AlignmentDirectional(0.0, -1.0),
                      end: const AlignmentDirectional(0, 1.0),
                    ),
                  ),
                  child: Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            20.0, 24.0, 0.0, 0.0),
                        child: StreamBuilder<List<LessonsRecord>>(
                          stream: queryLessonsRecord(
                            queryBuilder: (lessonsRecord) => lessonsRecord
                                .where(
                                  'Category',
                                  isEqualTo: 'Meditazione',
                                )
                                .where(
                                  'isLive',
                                  isEqualTo: true,
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
                            List<LessonsRecord> columnLessonsRecordList =
                                snapshot.data!;
                            return SingleChildScrollView(
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: List.generate(
                                    columnLessonsRecordList.length,
                                    (columnIndex) {
                                  final columnLessonsRecord =
                                      columnLessonsRecordList[columnIndex];
                                  return Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsetsDirectional
                                            .fromSTEB(0.0, 0.0, 10.0, 0.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Padding(
                                              padding:
                                                  const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                      4.0, 0.0, 0.0, 0.0),
                                              child: AutoSizeText(
                                                columnLessonsRecord.title,
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .headlineMedium
                                                    .override(
                                                      fontFamily: 'Istok Web',
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .titles,
                                                      fontSize: 22.0,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                              ),
                                            ),
                                            InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                logFirebaseEvent(
                                                    'HOME_M_PAGE_Container_en9y9hi5_ON_TAP');
                                                logFirebaseEvent(
                                                    'Container_navigate_to');

                                                context.pushNamed(
                                                  'contentM',
                                                  queryParameters: {
                                                    'lessonRefMedita':
                                                        serializeParam(
                                                      columnLessonsRecord
                                                          .reference,
                                                      ParamType
                                                          .DocumentReference,
                                                    ),
                                                  }.withoutNulls,
                                                  extra: <String, dynamic>{
                                                    kTransitionInfoKey:
                                                        const TransitionInfo(
                                                      hasTransition: true,
                                                      transitionType:
                                                          PageTransitionType
                                                              .fade,
                                                      duration: Duration(
                                                          milliseconds: 0),
                                                    ),
                                                  },
                                                );
                                              },
                                              child: Container(
                                                width: 70.0,
                                                height: 50.0,
                                                decoration: const BoxDecoration(
                                                  shape: BoxShape.rectangle,
                                                ),
                                                child: Align(
                                                  alignment:
                                                      const AlignmentDirectional(
                                                          0.0, 0.0),
                                                  child: Text(
                                                    'Vedi tutti',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .labelSmall
                                                        .override(
                                                          fontFamily:
                                                              'Istok Web',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .subTextColor,
                                                        ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ].divide(const SizedBox(width: 10.0)),
                                        ),
                                      ),
                                      Container(
                                        width: double.infinity,
                                        height: 250.0,
                                        decoration: const BoxDecoration(),
                                        child: StreamBuilder<
                                            List<MeditazioneRecord>>(
                                          stream: queryMeditazioneRecord(
                                            parent:
                                                columnLessonsRecord.reference,
                                            queryBuilder: (meditazioneRecord) =>
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
                                                    color: FlutterFlowTheme.of(
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
                                              padding: EdgeInsets.zero,
                                              primary: false,
                                              scrollDirection: Axis.horizontal,
                                              itemCount:
                                                  listViewMeditazioneRecordList
                                                      .length,
                                              separatorBuilder: (_, __) =>
                                                  const SizedBox(width: 12.0),
                                              itemBuilder:
                                                  (context, listViewIndex) {
                                                final listViewMeditazioneRecord =
                                                    listViewMeditazioneRecordList[
                                                        listViewIndex];
                                                return Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.end,
                                                  children: [
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
                                                            'HOME_M_PAGE_Container_5ukaiyvk_ON_TAP');
                                                        logFirebaseEvent(
                                                            'Container_navigate_to');

                                                        context.pushNamed(
                                                          'audioM',
                                                          queryParameters: {
                                                            'audioRef':
                                                                serializeParam(
                                                              listViewMeditazioneRecord
                                                                  .reference,
                                                              ParamType
                                                                  .DocumentReference,
                                                            ),
                                                          }.withoutNulls,
                                                          extra: <String,
                                                              dynamic>{
                                                            kTransitionInfoKey:
                                                                const TransitionInfo(
                                                              hasTransition:
                                                                  true,
                                                              transitionType:
                                                                  PageTransitionType
                                                                      .fade,
                                                              duration: Duration(
                                                                  milliseconds:
                                                                      0),
                                                            ),
                                                          },
                                                        );
                                                      },
                                                      child: Container(
                                                        width: 280.0,
                                                        height: 175.0,
                                                        decoration:
                                                            const BoxDecoration(),
                                                        child: Stack(
                                                          children: [
                                                            ClipRRect(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          16.0),
                                                              child:
                                                                  Image.network(
                                                                valueOrDefault<
                                                                    String>(
                                                                  listViewMeditazioneRecord
                                                                      .image,
                                                                  'https://firebasestorage.googleapis.com/v0/b/clarity-878d9.appspot.com/o/imageAsset%2Fno_img.jpeg?alt=media&token=7553afd8-c614-479c-8d41-f498f61f22d2',
                                                                ),
                                                                width: 280.0,
                                                                height: 175.0,
                                                                fit: BoxFit
                                                                    .cover,
                                                              ),
                                                            ),
                                                            if (listViewMeditazioneRecord
                                                                    .premium &&
                                                                !valueOrDefault<
                                                                        bool>(
                                                                    currentUserDocument
                                                                        ?.isPremium,
                                                                    false))
                                                              AuthUserStreamWidget(
                                                                builder:
                                                                    (context) =>
                                                                        InkWell(
                                                                  splashColor:
                                                                      Colors
                                                                          .transparent,
                                                                  focusColor: Colors
                                                                      .transparent,
                                                                  hoverColor: Colors
                                                                      .transparent,
                                                                  highlightColor:
                                                                      Colors
                                                                          .transparent,
                                                                  onTap:
                                                                      () async {
                                                                    logFirebaseEvent(
                                                                        'HOME_M_PAGE_Stack_xdeh1ecs_ON_TAP');
                                                                    if (listViewMeditazioneRecord
                                                                            .premium &&
                                                                        !valueOrDefault<bool>(
                                                                            currentUserDocument?.isPremium,
                                                                            false)) {
                                                                      logFirebaseEvent(
                                                                          'Stack_navigate_to');

                                                                      context
                                                                          .pushNamed(
                                                                        'premium',
                                                                        extra: <String,
                                                                            dynamic>{
                                                                          kTransitionInfoKey:
                                                                              const TransitionInfo(
                                                                            hasTransition:
                                                                                true,
                                                                            transitionType:
                                                                                PageTransitionType.fade,
                                                                            duration:
                                                                                Duration(milliseconds: 0),
                                                                          ),
                                                                        },
                                                                      );
                                                                    } else {
                                                                      logFirebaseEvent(
                                                                          'Stack_navigate_to');

                                                                      context
                                                                          .pushNamed(
                                                                        'audioM',
                                                                        queryParameters:
                                                                            {
                                                                          'audioRef':
                                                                              serializeParam(
                                                                            listViewMeditazioneRecord.reference,
                                                                            ParamType.DocumentReference,
                                                                          ),
                                                                        }.withoutNulls,
                                                                        extra: <String,
                                                                            dynamic>{
                                                                          kTransitionInfoKey:
                                                                              const TransitionInfo(
                                                                            hasTransition:
                                                                                true,
                                                                            transitionType:
                                                                                PageTransitionType.fade,
                                                                            duration:
                                                                                Duration(milliseconds: 0),
                                                                          ),
                                                                        },
                                                                      );
                                                                    }
                                                                  },
                                                                  child: Stack(
                                                                    children: [
                                                                      Opacity(
                                                                        opacity:
                                                                            0.5,
                                                                        child:
                                                                            Align(
                                                                          alignment: const AlignmentDirectional(
                                                                              0.0,
                                                                              0.0),
                                                                          child:
                                                                              SvgPicture.asset(
                                                                            'assets/images/LOCK.svg',
                                                                            fit:
                                                                                BoxFit.contain,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      Opacity(
                                                                        opacity:
                                                                            0.5,
                                                                        child:
                                                                            Align(
                                                                          alignment: const AlignmentDirectional(
                                                                              0.0,
                                                                              0.0),
                                                                          child:
                                                                              Container(
                                                                            width:
                                                                                double.infinity,
                                                                            height:
                                                                                double.infinity,
                                                                            decoration:
                                                                                BoxDecoration(
                                                                              color: const Color(0xFF399AD2),
                                                                              borderRadius: BorderRadius.circular(16.0),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(0.0,
                                                              4.0, 0.0, 4.0),
                                                      child: Container(
                                                        width: 280.0,
                                                        decoration:
                                                            const BoxDecoration(),
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                      0.0,
                                                                      10.0,
                                                                      0.0,
                                                                      0.0),
                                                              child: Container(
                                                                width: 272.0,
                                                                height: 24.0,
                                                                decoration:
                                                                    const BoxDecoration(),
                                                                child: Text(
                                                                  listViewMeditazioneRecord
                                                                      .title,
                                                                  style: GoogleFonts
                                                                      .getFont(
                                                                    'Open Sans',
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .lessonTitle,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .normal,
                                                                    fontSize:
                                                                        16.0,
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                            Container(
                                                              width: 250.0,
                                                              height: 32.0,
                                                              decoration:
                                                                  const BoxDecoration(),
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .center,
                                                                children: [
                                                                  FaIcon(
                                                                    FontAwesomeIcons
                                                                        .clock,
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .divColor,
                                                                    size: 18.0,
                                                                  ),
                                                                  Text(
                                                                    '~ ${listViewMeditazioneRecord.length} mins.',
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Istok Web',
                                                                          color:
                                                                              FlutterFlowTheme.of(context).subTextColor,
                                                                          fontSize:
                                                                              12.0,
                                                                        ),
                                                                  ),
                                                                  Align(
                                                                    alignment:
                                                                        const AlignmentDirectional(
                                                                            0.0,
                                                                            0.0),
                                                                    child:
                                                                        Container(
                                                                      decoration:
                                                                          const BoxDecoration(),
                                                                      child:
                                                                          Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children: [
                                                                          if ((currentUserDocument?.likes.toList() ?? []).contains(listViewMeditazioneRecord
                                                                              .reference
                                                                              .id))
                                                                            AuthUserStreamWidget(
                                                                              builder: (context) => InkWell(
                                                                                splashColor: Colors.transparent,
                                                                                focusColor: Colors.transparent,
                                                                                hoverColor: Colors.transparent,
                                                                                highlightColor: Colors.transparent,
                                                                                onTap: () async {
                                                                                  logFirebaseEvent('HOME_M_PAGE_liked_ON_TAP');
                                                                                  logFirebaseEvent('liked_backend_call');

                                                                                  await currentUserReference!.update({
                                                                                    ...mapToFirestore(
                                                                                      {
                                                                                        'likes': FieldValue.arrayRemove([
                                                                                          listViewMeditazioneRecord.reference.id
                                                                                        ]),
                                                                                      },
                                                                                    ),
                                                                                  });
                                                                                  logFirebaseEvent('liked_update_app_state');
                                                                                  setState(() {});
                                                                                },
                                                                                child: Icon(
                                                                                  Icons.favorite,
                                                                                  color: FlutterFlowTheme.of(context).iconsAndToggleButtons,
                                                                                  size: 20.0,
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          if (!(currentUserDocument?.likes.toList() ?? []).contains(listViewMeditazioneRecord
                                                                              .reference
                                                                              .id))
                                                                            AuthUserStreamWidget(
                                                                              builder: (context) => InkWell(
                                                                                splashColor: Colors.transparent,
                                                                                focusColor: Colors.transparent,
                                                                                hoverColor: Colors.transparent,
                                                                                highlightColor: Colors.transparent,
                                                                                onTap: () async {
                                                                                  logFirebaseEvent('HOME_M_PAGE_notliked_ON_TAP');
                                                                                  logFirebaseEvent('notliked_backend_call');

                                                                                  await currentUserReference!.update({
                                                                                    ...mapToFirestore(
                                                                                      {
                                                                                        'likes': FieldValue.arrayUnion([
                                                                                          listViewMeditazioneRecord.reference.id
                                                                                        ]),
                                                                                      },
                                                                                    ),
                                                                                  });
                                                                                  logFirebaseEvent('notliked_update_app_state');
                                                                                  setState(() {});
                                                                                },
                                                                                child: Icon(
                                                                                  Icons.favorite_border,
                                                                                  color: FlutterFlowTheme.of(context).iconsAndToggleButtons,
                                                                                  size: 20.0,
                                                                                ),
                                                                              ),
                                                                            ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ]
                                                                    .divide(const SizedBox(
                                                                        width:
                                                                            4.0))
                                                                    .addToStart(
                                                                        const SizedBox(
                                                                            width:
                                                                                4.0))
                                                                    .addToEnd(
                                                                        const SizedBox(
                                                                            width:
                                                                                4.0)),
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
                                }).addToEnd(const SizedBox(height: 100.0)),
                              ),
                            );
                          },
                        ),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(0.0, 1.0),
                        child: wrapWithModel(
                          model: _model.meditaNavBarModel,
                          updateCallback: () => setState(() {}),
                          child: const MeditaNavBarWidget(),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
