import 'package:auto_size_text/auto_size_text.dart';

import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/user_side/components/nav_bar/sonno_nav_bar/sonno_nav_bar_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'home_s_model.dart';
export 'home_s_model.dart';

class HomeSWidget extends StatefulWidget {
  const HomeSWidget({super.key});

  @override
  State<HomeSWidget> createState() => _HomeSWidgetState();
}

class _HomeSWidgetState extends State<HomeSWidget> {
  late HomeSModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomeSModel());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'homeS'});
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
        title: 'homeS',
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
                'Sonno',
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
                      logFirebaseEvent('HOME_S_PAGE_Image_gxoxswjm_ON_TAP');
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
                                  isEqualTo: 'Sonno',
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
                                                    'HOME_S_PAGE_Container_2d954ig4_ON_TAP');
                                                logFirebaseEvent(
                                                    'Container_navigate_to');

                                                context.pushNamed(
                                                  'contentS',
                                                  queryParameters: {
                                                    'lessonRefSonno':
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
                                        child: StreamBuilder<List<SonnoRecord>>(
                                          stream: querySonnoRecord(
                                            parent:
                                                columnLessonsRecord.reference,
                                            queryBuilder: (sonnoRecord) =>
                                                sonnoRecord.orderBy('day'),
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
                                            List<SonnoRecord>
                                                listViewSonnoRecordList =
                                                snapshot.data!;
                                            return ListView.separated(
                                              padding: EdgeInsets.zero,
                                              primary: false,
                                              scrollDirection: Axis.horizontal,
                                              itemCount: listViewSonnoRecordList
                                                  .length,
                                              separatorBuilder: (_, __) =>
                                                  const SizedBox(width: 12.0),
                                              itemBuilder:
                                                  (context, listViewIndex) {
                                                final listViewSonnoRecord =
                                                    listViewSonnoRecordList[
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
                                                            'HOME_S_PAGE_Container_s7mba9ym_ON_TAP');
                                                        logFirebaseEvent(
                                                            'Container_navigate_to');

                                                        context.pushNamed(
                                                          'audioS',
                                                          queryParameters: {
                                                            'audioRef':
                                                                serializeParam(
                                                              listViewSonnoRecord,
                                                              ParamType
                                                                  .Document,
                                                            ),
                                                          }.withoutNulls,
                                                          extra: <String,
                                                              dynamic>{
                                                            'audioRef':
                                                                listViewSonnoRecord,
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
                                                                  listViewSonnoRecord
                                                                      .image,
                                                                  'https://firebasestorage.googleapis.com/v0/b/clarity-878d9.appspot.com/o/imageAsset%2Fno_img.jpeg?alt=media&token=7553afd8-c614-479c-8d41-f498f61f22d2',
                                                                ),
                                                                width: 280.0,
                                                                height: 175.0,
                                                                fit: BoxFit
                                                                    .cover,
                                                              ),
                                                            ),
                                                            if (listViewSonnoRecord
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
                                                                        'HOME_S_PAGE_Stack_wfirsdm3_ON_TAP');
                                                                    if (listViewSonnoRecord
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
                                                                        'audioS',
                                                                        queryParameters:
                                                                            {
                                                                          'audioRef':
                                                                              serializeParam(
                                                                            listViewSonnoRecord,
                                                                            ParamType.Document,
                                                                          ),
                                                                        }.withoutNulls,
                                                                        extra: <String,
                                                                            dynamic>{
                                                                          'audioRef':
                                                                              listViewSonnoRecord,
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
                                                                  listViewSonnoRecord
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
                                                                    '~ ${listViewSonnoRecord.length} mins.',
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
                                                                          if ((currentUserDocument?.likes.toList() ?? []).contains(listViewSonnoRecord
                                                                              .reference
                                                                              .id))
                                                                            AuthUserStreamWidget(
                                                                              builder: (context) => InkWell(
                                                                                splashColor: Colors.transparent,
                                                                                focusColor: Colors.transparent,
                                                                                hoverColor: Colors.transparent,
                                                                                highlightColor: Colors.transparent,
                                                                                onTap: () async {
                                                                                  logFirebaseEvent('HOME_S_PAGE_liked_ON_TAP');
                                                                                  logFirebaseEvent('liked_backend_call');

                                                                                  await currentUserReference!.update({
                                                                                    ...mapToFirestore(
                                                                                      {
                                                                                        'likes': FieldValue.arrayRemove([
                                                                                          listViewSonnoRecord.reference.id
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
                                                                          if (!(currentUserDocument?.likes.toList() ?? []).contains(listViewSonnoRecord
                                                                              .reference
                                                                              .id))
                                                                            AuthUserStreamWidget(
                                                                              builder: (context) => InkWell(
                                                                                splashColor: Colors.transparent,
                                                                                focusColor: Colors.transparent,
                                                                                hoverColor: Colors.transparent,
                                                                                highlightColor: Colors.transparent,
                                                                                onTap: () async {
                                                                                  logFirebaseEvent('HOME_S_PAGE_notliked_ON_TAP');
                                                                                  logFirebaseEvent('notliked_backend_call');

                                                                                  await currentUserReference!.update({
                                                                                    ...mapToFirestore(
                                                                                      {
                                                                                        'likes': FieldValue.arrayUnion([
                                                                                          listViewSonnoRecord.reference.id
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
                          model: _model.sonnoNavBarModel,
                          updateCallback: () => setState(() {}),
                          child: const SonnoNavBarWidget(),
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
