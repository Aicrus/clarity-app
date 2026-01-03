import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/user_side/components/nav_bar/potenziamenti_nav_bar/potenziamenti_nav_bar_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'home_p_model.dart';
export 'home_p_model.dart';

class HomePWidget extends StatefulWidget {
  const HomePWidget({super.key});

  @override
  State<HomePWidget> createState() => _HomePWidgetState();
}

class _HomePWidgetState extends State<HomePWidget> {
  late HomePModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomePModel());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'homeP'});
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
        title: 'homeP',
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
                'Potenziamenti',
                style: FlutterFlowTheme.of(context).titleSmall.override(
                      fontFamily: 'Istok Web',
                      color: FlutterFlowTheme.of(context).topNavBarTextColor,
                    ),
              ),
              actions: [
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 20.0, 0.0),
                  child: InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      logFirebaseEvent('HOME_P_PAGE_Image_xti1o2p5_ON_TAP');
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
            body: Container(
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
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(20.0, 24.0, 0.0, 0.0),
                    child: StreamBuilder<List<LessonsRecord>>(
                      stream: queryLessonsRecord(
                        queryBuilder: (lessonsRecord) => lessonsRecord
                            .where(
                              'Category',
                              isEqualTo: 'Potenziamenti',
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
                        List<LessonsRecord> listViewLessonsRecordList =
                            snapshot.data!;
                        return ListView.separated(
                          padding: const EdgeInsets.fromLTRB(
                            0,
                            0,
                            0,
                            100.0,
                          ),
                          primary: false,
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
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  4.0, 0.0, 0.0, 0.0),
                                          child: Text(
                                            listViewLessonsRecord.title,
                                            maxLines: 2,
                                            style: FlutterFlowTheme.of(context)
                                                .headlineMedium
                                                .override(
                                                  fontFamily: 'Istok Web',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .titles,
                                                  fontSize: 21.0,
                                                  fontWeight: FontWeight.bold,
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
                                                'HOME_P_PAGE_Container_imggr9lf_ON_TAP');
                                            logFirebaseEvent(
                                                'Container_navigate_to');

                                            context.pushNamed(
                                              'contentP',
                                              queryParameters: {
                                                'lessonRefPotenzia':
                                                    serializeParam(
                                                  listViewLessonsRecord
                                                      .reference,
                                                  ParamType.DocumentReference,
                                                ),
                                              }.withoutNulls,
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
                                          child: Container(
                                            height: 50.0,
                                            decoration: const BoxDecoration(),
                                            child: Align(
                                              alignment: const AlignmentDirectional(
                                                  0.0, 0.0),
                                              child: Text(
                                                'Vedi tutti',
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .labelSmall
                                                    .override(
                                                      fontFamily: 'Istok Web',
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .subTextColor,
                                                    ),
                                              ),
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
                                  child:
                                      StreamBuilder<List<PotenziamentiRecord>>(
                                    stream: queryPotenziamentiRecord(
                                      parent: listViewLessonsRecord.reference,
                                      queryBuilder: (potenziamentiRecord) =>
                                          potenziamentiRecord.orderBy('day'),
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
                                                  FlutterFlowTheme.of(context)
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
                                        padding: EdgeInsets.zero,
                                        scrollDirection: Axis.horizontal,
                                        itemCount:
                                            listViewPotenziamentiRecordList
                                                .length,
                                        separatorBuilder: (_, __) =>
                                            const SizedBox(width: 12.0),
                                        itemBuilder: (context, listViewIndex) {
                                          final listViewPotenziamentiRecord =
                                              listViewPotenziamentiRecordList[
                                                  listViewIndex];
                                          return Column(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.end,
                                            children: [
                                              Align(
                                                alignment: const AlignmentDirectional(
                                                    0.0, 0.0),
                                                child: InkWell(
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
                                                        'HOME_P_PAGE_Stack_3h0ue8mx_ON_TAP');
                                                    logFirebaseEvent(
                                                        'Stack_navigate_to');

                                                    context.pushNamed(
                                                      'audioP',
                                                      queryParameters: {
                                                        'docPotenzia':
                                                            serializeParam(
                                                          listViewPotenziamentiRecord,
                                                          ParamType.Document,
                                                        ),
                                                      }.withoutNulls,
                                                      extra: <String, dynamic>{
                                                        'docPotenzia':
                                                            listViewPotenziamentiRecord,
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
                                                  child: Stack(
                                                    alignment:
                                                        const AlignmentDirectional(
                                                            0.0, 0.0),
                                                    children: [
                                                      ClipRRect(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(16.0),
                                                        child: Image.network(
                                                          valueOrDefault<
                                                              String>(
                                                            listViewPotenziamentiRecord
                                                                .image,
                                                            'https://picsum.photos/seed/839/600',
                                                          ),
                                                          width: 280.0,
                                                          height: 175.0,
                                                          fit: BoxFit.cover,
                                                        ),
                                                      ),
                                                      if (listViewPotenziamentiRecord
                                                              .premium &&
                                                          !valueOrDefault<bool>(
                                                              currentUserDocument
                                                                  ?.isPremium,
                                                              false))
                                                        AuthUserStreamWidget(
                                                          builder: (context) =>
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
                                                                  'HOME_P_PAGE_Stack_lkyw68jb_ON_TAP');
                                                              if (listViewPotenziamentiRecord
                                                                      .premium &&
                                                                  !valueOrDefault<
                                                                          bool>(
                                                                      currentUserDocument
                                                                          ?.isPremium,
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
                                                                          PageTransitionType
                                                                              .fade,
                                                                      duration: Duration(
                                                                          milliseconds:
                                                                              0),
                                                                    ),
                                                                  },
                                                                );
                                                              } else {
                                                                logFirebaseEvent(
                                                                    'Stack_navigate_to');

                                                                context
                                                                    .pushNamed(
                                                                  'audioP',
                                                                  queryParameters:
                                                                      {
                                                                    'docPotenzia':
                                                                        serializeParam(
                                                                      listViewPotenziamentiRecord,
                                                                      ParamType
                                                                          .Document,
                                                                    ),
                                                                  }.withoutNulls,
                                                                  extra: <String,
                                                                      dynamic>{
                                                                    'docPotenzia':
                                                                        listViewPotenziamentiRecord,
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
                                                              }
                                                            },
                                                            child: Stack(
                                                              alignment:
                                                                  const AlignmentDirectional(
                                                                      0.0, 0.0),
                                                              children: [
                                                                Opacity(
                                                                  opacity: 0.5,
                                                                  child: Align(
                                                                    alignment:
                                                                        const AlignmentDirectional(
                                                                            0.0,
                                                                            0.0),
                                                                    child: SvgPicture
                                                                        .asset(
                                                                      'assets/images/LOCK.svg',
                                                                      fit: BoxFit
                                                                          .contain,
                                                                    ),
                                                                  ),
                                                                ),
                                                                Opacity(
                                                                  opacity: 0.5,
                                                                  child: Align(
                                                                    alignment:
                                                                        const AlignmentDirectional(
                                                                            0.0,
                                                                            0.0),
                                                                    child:
                                                                        Container(
                                                                      width:
                                                                          280.0,
                                                                      height:
                                                                          175.0,
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        color: const Color(
                                                                            0xFF399AD2),
                                                                        borderRadius:
                                                                            BorderRadius.circular(16.0),
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
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 4.0, 0.0, 4.0),
                                                child: Container(
                                                  width: 280.0,
                                                  decoration: const BoxDecoration(),
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
                                                            listViewPotenziamentiRecord
                                                                .title,
                                                            style: GoogleFonts
                                                                .getFont(
                                                              'Open Sans',
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .lessonTitle,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .normal,
                                                              fontSize: 16.0,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Container(
                                                        width: 135.0,
                                                        height: 32.0,
                                                        decoration:
                                                            const BoxDecoration(),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .center,
                                                          children: [
                                                            FaIcon(
                                                              FontAwesomeIcons
                                                                  .clock,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .divColor,
                                                              size: 18.0,
                                                            ),
                                                            Text(
                                                              '~ ${listViewPotenziamentiRecord.length} mins.',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Istok Web',
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .subTextColor,
                                                                    fontSize:
                                                                        12.0,
                                                                  ),
                                                            ),
                                                            Flexible(
                                                              child: Align(
                                                                alignment:
                                                                    const AlignmentDirectional(
                                                                        0.0,
                                                                        0.0),
                                                                child:
                                                                    Container(
                                                                  decoration:
                                                                      const BoxDecoration(),
                                                                  child: Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      if ((currentUserDocument?.likes.toList() ??
                                                                              [])
                                                                          .contains(listViewPotenziamentiRecord
                                                                              .reference
                                                                              .id))
                                                                        AuthUserStreamWidget(
                                                                          builder: (context) =>
                                                                              InkWell(
                                                                            splashColor:
                                                                                Colors.transparent,
                                                                            focusColor:
                                                                                Colors.transparent,
                                                                            hoverColor:
                                                                                Colors.transparent,
                                                                            highlightColor:
                                                                                Colors.transparent,
                                                                            onTap:
                                                                                () async {
                                                                              logFirebaseEvent('HOME_P_PAGE_liked_ON_TAP');
                                                                              logFirebaseEvent('liked_backend_call');

                                                                              await currentUserReference!.update({
                                                                                ...mapToFirestore(
                                                                                  {
                                                                                    'likes': FieldValue.arrayRemove([
                                                                                      listViewPotenziamentiRecord.reference.id
                                                                                    ]),
                                                                                  },
                                                                                ),
                                                                              });
                                                                              logFirebaseEvent('liked_update_app_state');
                                                                              setState(() {});
                                                                            },
                                                                            child:
                                                                                Icon(
                                                                              Icons.favorite,
                                                                              color: FlutterFlowTheme.of(context).iconsAndToggleButtons,
                                                                              size: 20.0,
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      if (!(currentUserDocument?.likes.toList() ??
                                                                              [])
                                                                          .contains(listViewPotenziamentiRecord
                                                                              .reference
                                                                              .id))
                                                                        AuthUserStreamWidget(
                                                                          builder: (context) =>
                                                                              InkWell(
                                                                            splashColor:
                                                                                Colors.transparent,
                                                                            focusColor:
                                                                                Colors.transparent,
                                                                            hoverColor:
                                                                                Colors.transparent,
                                                                            highlightColor:
                                                                                Colors.transparent,
                                                                            onTap:
                                                                                () async {
                                                                              logFirebaseEvent('HOME_P_PAGE_notliked_ON_TAP');
                                                                              logFirebaseEvent('notliked_backend_call');

                                                                              await currentUserReference!.update({
                                                                                ...mapToFirestore(
                                                                                  {
                                                                                    'likes': FieldValue.arrayUnion([
                                                                                      listViewPotenziamentiRecord.reference.id
                                                                                    ]),
                                                                                  },
                                                                                ),
                                                                              });
                                                                              logFirebaseEvent('notliked_update_app_state');
                                                                              setState(() {});
                                                                            },
                                                                            child:
                                                                                Icon(
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
                                                            ),
                                                          ]
                                                              .divide(const SizedBox(
                                                                  width: 4.0))
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
                          },
                        );
                      },
                    ),
                  ),
                  Align(
                    alignment: const AlignmentDirectional(0.0, 1.0),
                    child: wrapWithModel(
                      model: _model.potenziamentiNavBarModel,
                      updateCallback: () => setState(() {}),
                      child: const PotenziamentiNavBarWidget(),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
