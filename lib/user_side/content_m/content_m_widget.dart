import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/user_side/components/nav_bar/medita_nav_bar/medita_nav_bar_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'content_m_model.dart';
export 'content_m_model.dart';

class ContentMWidget extends StatefulWidget {
  const ContentMWidget({
    super.key,
    required this.lessonRefMedita,
  });

  final DocumentReference? lessonRefMedita;

  @override
  State<ContentMWidget> createState() => _ContentMWidgetState();
}

class _ContentMWidgetState extends State<ContentMWidget> {
  late ContentMModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ContentMModel());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'contentM'});
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
        title: 'contentM',
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
              title: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 20.0),
                child: Container(
                  width: double.infinity,
                  height: 56.0,
                  decoration: const BoxDecoration(),
                  child: StreamBuilder<LessonsRecord>(
                    stream: FFAppState().allMedita(
                      requestFn: () =>
                          LessonsRecord.getDocument(widget.lessonRefMedita!),
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
                      final rowLessonsRecord = snapshot.data!;
                      return Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Align(
                            alignment: const AlignmentDirectional(0.0, 0.0),
                            child: Container(
                              decoration: const BoxDecoration(),
                              child: InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  logFirebaseEvent(
                                      'CONTENT_M_PAGE_Container_4s20tayu_ON_TAP');
                                  logFirebaseEvent('Container_navigate_back');
                                  context.safePop();
                                },
                                child: Container(
                                  width: 40.0,
                                  height: 40.0,
                                  decoration: const BoxDecoration(),
                                  child: Icon(
                                    Icons.arrow_back,
                                    color: FlutterFlowTheme.of(context)
                                        .appBarIconColor,
                                    size: 24.0,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: const AlignmentDirectional(0.0, 0.0),
                            child: Text(
                              rowLessonsRecord.title,
                              style: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .override(
                                    fontFamily: 'Istok Web',
                                    color: FlutterFlowTheme.of(context)
                                        .topNavBarTextColor,
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
                                  'CONTENT_M_PAGE_Container_zwypwhrh_ON_TAP');
                              logFirebaseEvent('Container_navigate_to');

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
                            child: Container(
                              width: 28.0,
                              height: 28.0,
                              decoration: const BoxDecoration(),
                              child: InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  logFirebaseEvent(
                                      'CONTENT_M_PAGE_Image_nj5p2ah8_ON_TAP');
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
                                    Theme.of(context).brightness ==
                                            Brightness.dark
                                        ? 'assets/images/Promemoria_copie.svg'
                                        : 'assets/images/Promemorialght.svg',
                                    width: 28.0,
                                    height: 28.0,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                ),
              ),
              actions: const [],
              centerTitle: true,
              elevation: 2.0,
            ),
            body: Container(
              width: double.infinity,
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
                        const EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
                    child: StreamBuilder<List<MeditazioneRecord>>(
                      stream: queryMeditazioneRecord(
                        parent: widget.lessonRefMedita,
                        queryBuilder: (meditazioneRecord) =>
                            meditazioneRecord.orderBy('day'),
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
                        List<MeditazioneRecord> listViewMeditazioneRecordList =
                            snapshot.data!;
                        return ListView.separated(
                          padding: const EdgeInsets.fromLTRB(
                            0,
                            24.0,
                            0,
                            100.0,
                          ),
                          scrollDirection: Axis.vertical,
                          itemCount: listViewMeditazioneRecordList.length,
                          separatorBuilder: (_, __) => const SizedBox(height: 16.0),
                          itemBuilder: (context, listViewIndex) {
                            final listViewMeditazioneRecord =
                                listViewMeditazioneRecordList[listViewIndex];
                            return Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    logFirebaseEvent(
                                        'CONTENT_M_PAGE_Container_d1uje43z_ON_TAP');
                                    logFirebaseEvent('Container_navigate_to');

                                    context.pushNamed(
                                      'audioM',
                                      queryParameters: {
                                        'audioRef': serializeParam(
                                          listViewMeditazioneRecord.reference,
                                          ParamType.DocumentReference,
                                        ),
                                      }.withoutNulls,
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
                                  child: Container(
                                    width: 350.0,
                                    height: 220.0,
                                    decoration: const BoxDecoration(),
                                    child: Stack(
                                      children: [
                                        ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(16.0),
                                          child: Image.network(
                                            valueOrDefault<String>(
                                              listViewMeditazioneRecord.image,
                                              'https://firebasestorage.googleapis.com/v0/b/clarity-878d9.appspot.com/o/imageAsset%2Fno_img.jpeg?alt=media&token=7553afd8-c614-479c-8d41-f498f61f22d2',
                                            ),
                                            width: 350.0,
                                            height: 220.0,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        if (listViewMeditazioneRecord.premium &&
                                            !valueOrDefault<bool>(
                                                currentUserDocument?.isPremium,
                                                false))
                                          AuthUserStreamWidget(
                                            builder: (context) => InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                logFirebaseEvent(
                                                    'CONTENT_M_PAGE_Stack_lvx9psts_ON_TAP');
                                                if (listViewMeditazioneRecord
                                                        .premium &&
                                                    !valueOrDefault<bool>(
                                                        currentUserDocument
                                                            ?.isPremium,
                                                        false)) {
                                                  logFirebaseEvent(
                                                      'Stack_navigate_to');

                                                  context.pushNamed(
                                                    'premium',
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
                                                } else {
                                                  logFirebaseEvent(
                                                      'Stack_navigate_to');

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
                                                }
                                              },
                                              child: Stack(
                                                children: [
                                                  Opacity(
                                                    opacity: 0.5,
                                                    child: Align(
                                                      alignment:
                                                          const AlignmentDirectional(
                                                              0.0, 0.0),
                                                      child: SvgPicture.asset(
                                                        'assets/images/LOCK.svg',
                                                        fit: BoxFit.contain,
                                                      ),
                                                    ),
                                                  ),
                                                  Opacity(
                                                    opacity: 0.5,
                                                    child: Align(
                                                      alignment:
                                                          const AlignmentDirectional(
                                                              0.0, 0.0),
                                                      child: Container(
                                                        width: double.infinity,
                                                        height: double.infinity,
                                                        decoration:
                                                            BoxDecoration(
                                                          color:
                                                              const Color(0xFF399AD2),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      16.0),
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
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      18.0, 0.0, 0.0, 0.0),
                                  child: Container(
                                    width: 280.0,
                                    height: 66.0,
                                    decoration: const BoxDecoration(),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Flexible(
                                          child: Container(
                                            width: 272.0,
                                            height: 24.0,
                                            decoration: const BoxDecoration(),
                                            child: Text(
                                              listViewMeditazioneRecord.title,
                                              style: GoogleFonts.getFont(
                                                'Open Sans',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .lessonTitle,
                                                fontWeight: FontWeight.normal,
                                                fontSize: 16.0,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Flexible(
                                          child: Container(
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
                                                      .iconsAndToggleButtons,
                                                  size: 18.0,
                                                ),
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          5.0, 0.0, 0.0, 0.0),
                                                  child: Text(
                                                    '~ ${listViewMeditazioneRecord.length} mins.',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Istok Web',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .divColor,
                                                          fontSize: 12.0,
                                                        ),
                                                  ),
                                                ),
                                                Flexible(
                                                  child: Align(
                                                    alignment:
                                                        const AlignmentDirectional(
                                                            0.0, 0.0),
                                                    child: Container(
                                                      decoration:
                                                          const BoxDecoration(),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          if ((currentUserDocument
                                                                      ?.likes
                                                                      .toList() ??
                                                                  [])
                                                              .contains(
                                                                  listViewMeditazioneRecord
                                                                      .reference
                                                                      .id))
                                                            AuthUserStreamWidget(
                                                              builder:
                                                                  (context) =>
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
                                                                onTap:
                                                                    () async {
                                                                  logFirebaseEvent(
                                                                      'CONTENT_M_PAGE_liked_ON_TAP');
                                                                  logFirebaseEvent(
                                                                      'liked_backend_call');

                                                                  await currentUserReference!
                                                                      .update({
                                                                    ...mapToFirestore(
                                                                      {
                                                                        'likes':
                                                                            FieldValue.arrayRemove([
                                                                          listViewMeditazioneRecord
                                                                              .reference
                                                                              .id
                                                                        ]),
                                                                      },
                                                                    ),
                                                                  });
                                                                  logFirebaseEvent(
                                                                      'liked_update_app_state');
                                                                  setState(
                                                                      () {});
                                                                },
                                                                child: Icon(
                                                                  Icons
                                                                      .favorite,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .iconsAndToggleButtons,
                                                                  size: 20.0,
                                                                ),
                                                              ),
                                                            ),
                                                          if (!(currentUserDocument
                                                                      ?.likes
                                                                      .toList() ??
                                                                  [])
                                                              .contains(
                                                                  listViewMeditazioneRecord
                                                                      .reference
                                                                      .id))
                                                            AuthUserStreamWidget(
                                                              builder:
                                                                  (context) =>
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
                                                                onTap:
                                                                    () async {
                                                                  logFirebaseEvent(
                                                                      'CONTENT_M_PAGE_notliked_ON_TAP');
                                                                  logFirebaseEvent(
                                                                      'notliked_backend_call');

                                                                  await currentUserReference!
                                                                      .update({
                                                                    ...mapToFirestore(
                                                                      {
                                                                        'likes':
                                                                            FieldValue.arrayUnion([
                                                                          listViewMeditazioneRecord
                                                                              .reference
                                                                              .id
                                                                        ]),
                                                                      },
                                                                    ),
                                                                  });
                                                                  logFirebaseEvent(
                                                                      'notliked_update_app_state');
                                                                  setState(
                                                                      () {});
                                                                },
                                                                child: Icon(
                                                                  Icons
                                                                      .favorite_border,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .iconsAndToggleButtons,
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
                                                  .divide(const SizedBox(width: 4.0))
                                                  .addToStart(
                                                      const SizedBox(width: 4.0))
                                                  .addToEnd(
                                                      const SizedBox(width: 4.0)),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ].divide(const SizedBox(height: 8.0)),
                            );
                          },
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
          ),
        ));
  }
}
