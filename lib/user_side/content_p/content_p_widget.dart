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
import 'content_p_model.dart';
export 'content_p_model.dart';

class ContentPWidget extends StatefulWidget {
  const ContentPWidget({
    super.key,
    required this.lessonRefPotenzia,
  });

  final DocumentReference? lessonRefPotenzia;

  @override
  State<ContentPWidget> createState() => _ContentPWidgetState();
}

class _ContentPWidgetState extends State<ContentPWidget> {
  late ContentPModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ContentPModel());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'contentP'});
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
        title: 'contentP',
        color: FlutterFlowTheme.of(context).primary.withAlpha(0XFF),
        child: GestureDetector(
          onTap: () => _model.unfocusNode.canRequestFocus
              ? FocusScope.of(context).requestFocus(_model.unfocusNode)
              : FocusScope.of(context).unfocus(),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).gradientTop,
            appBar: AppBar(
              backgroundColor: FlutterFlowTheme.of(context).primary,
              automaticallyImplyLeading: false,
              title: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 20.0),
                child: Container(
                  width: double.infinity,
                  height: 56.0,
                  decoration: const BoxDecoration(),
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
                    child: StreamBuilder<LessonsRecord>(
                      stream:
                          LessonsRecord.getDocument(widget.lessonRefPotenzia!),
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
                                        'CONTENT_P_PAGE_Icon_vs6ng2pm_ON_TAP');
                                    logFirebaseEvent('Icon_navigate_back');
                                    context.safePop();
                                  },
                                  child: Icon(
                                    Icons.arrow_back,
                                    color: FlutterFlowTheme.of(context)
                                        .topNavBarTextColor,
                                    size: 24.0,
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
                                    'CONTENT_P_PAGE_Image_r9cu3bf0_ON_TAP');
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
                          ],
                        );
                      },
                    ),
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
                  Align(
                    alignment: const AlignmentDirectional(0.0, 0.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Align(
                          alignment: const AlignmentDirectional(0.0, 0.0),
                          child: Container(
                            width: double.infinity,
                            decoration: const BoxDecoration(),
                            child: SingleChildScrollView(
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Align(
                                    alignment: const AlignmentDirectional(0.0, 0.0),
                                    child: Container(
                                      width: 350.0,
                                      height:
                                          MediaQuery.sizeOf(context).height *
                                              0.81,
                                      decoration: const BoxDecoration(),
                                      child: StreamBuilder<
                                          List<PotenziamentiRecord>>(
                                        stream: queryPotenziamentiRecord(
                                          parent: widget.lessonRefPotenzia,
                                          queryBuilder: (potenziamentiRecord) =>
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
                                                  color: FlutterFlowTheme.of(
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
                                            padding: const EdgeInsets.fromLTRB(
                                              0,
                                              0,
                                              0,
                                              100.0,
                                            ),
                                            primary: false,
                                            scrollDirection: Axis.vertical,
                                            itemCount:
                                                listViewPotenziamentiRecordList
                                                    .length,
                                            separatorBuilder: (_, __) =>
                                                const SizedBox(height: 16.0),
                                            itemBuilder:
                                                (context, listViewIndex) {
                                              final listViewPotenziamentiRecord =
                                                  listViewPotenziamentiRecordList[
                                                      listViewIndex];
                                              return Container(
                                                width: 350.0,
                                                height: 286.0,
                                                decoration: const BoxDecoration(),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
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
                                                            'CONTENT_P_PAGE_Container_z7eqf4h9_ON_TAP');
                                                        logFirebaseEvent(
                                                            'Container_navigate_to');

                                                        context.pushNamed(
                                                          'audioP',
                                                          queryParameters: {
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
                                                      },
                                                      child: Container(
                                                        width: 350.0,
                                                        height: 220.0,
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
                                                                  listViewPotenziamentiRecord
                                                                      .image,
                                                                  'https://firebasestorage.googleapis.com/v0/b/clarity-878d9.appspot.com/o/imageAsset%2Fno_img.jpeg?alt=media&token=7553afd8-c614-479c-8d41-f498f61f22d2',
                                                                ),
                                                                width: 350.0,
                                                                height: 350.0,
                                                                fit: BoxFit
                                                                    .cover,
                                                              ),
                                                            ),
                                                            if (listViewPotenziamentiRecord
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
                                                                        'CONTENT_P_PAGE_Stack_5nlvo0va_ON_TAP');
                                                                    if (listViewPotenziamentiRecord
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
                                                                        'audioP',
                                                                        queryParameters:
                                                                            {
                                                                          'docPotenzia':
                                                                              serializeParam(
                                                                            listViewPotenziamentiRecord,
                                                                            ParamType.Document,
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
                                                    Flexible(
                                                      child: Container(
                                                        width: 280.0,
                                                        height: 66.0,
                                                        decoration:
                                                            const BoxDecoration(),
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      10.0,
                                                                      0.0,
                                                                      0.0,
                                                                      0.0),
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
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
                                                                child:
                                                                    Container(
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
                                                              Flexible(
                                                                child: Padding(
                                                                  padding: const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          5.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                  child:
                                                                      Container(
                                                                    height:
                                                                        34.0,
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
                                                                          color:
                                                                              FlutterFlowTheme.of(context).titles,
                                                                          size:
                                                                              24.0,
                                                                        ),
                                                                        Padding(
                                                                          padding: const EdgeInsetsDirectional.fromSTEB(
                                                                              5.0,
                                                                              0.0,
                                                                              0.0,
                                                                              0.0),
                                                                          child:
                                                                              Text(
                                                                            '~${listViewPotenziamentiRecord.length} mins.',
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: 'Istok Web',
                                                                                  color: FlutterFlowTheme.of(context).titles,
                                                                                ),
                                                                          ),
                                                                        ),
                                                                        Flexible(
                                                                          child:
                                                                              Align(
                                                                            alignment:
                                                                                const AlignmentDirectional(0.0, 0.0),
                                                                            child:
                                                                                Container(
                                                                              decoration: const BoxDecoration(),
                                                                              child: Row(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                children: [
                                                                                  if ((currentUserDocument?.likes.toList() ?? []).contains(listViewPotenziamentiRecord.reference.id))
                                                                                    AuthUserStreamWidget(
                                                                                      builder: (context) => InkWell(
                                                                                        splashColor: Colors.transparent,
                                                                                        focusColor: Colors.transparent,
                                                                                        hoverColor: Colors.transparent,
                                                                                        highlightColor: Colors.transparent,
                                                                                        onTap: () async {
                                                                                          logFirebaseEvent('CONTENT_P_PAGE_liked_ON_TAP');
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
                                                                                        child: Icon(
                                                                                          Icons.favorite,
                                                                                          color: FlutterFlowTheme.of(context).iconsAndToggleButtons,
                                                                                          size: 20.0,
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                  if (!(currentUserDocument?.likes.toList() ?? []).contains(listViewPotenziamentiRecord.reference.id))
                                                                                    AuthUserStreamWidget(
                                                                                      builder: (context) => InkWell(
                                                                                        splashColor: Colors.transparent,
                                                                                        focusColor: Colors.transparent,
                                                                                        hoverColor: Colors.transparent,
                                                                                        highlightColor: Colors.transparent,
                                                                                        onTap: () async {
                                                                                          logFirebaseEvent('CONTENT_P_PAGE_notliked_ON_TAP');
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
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              );
                                            },
                                          );
                                        },
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: double.infinity,
                                    height: 100.0,
                                    decoration: const BoxDecoration(),
                                  ),
                                ]
                                    .divide(const SizedBox(height: 16.0))
                                    .addToStart(const SizedBox(height: 24.0)),
                              ),
                            ),
                          ),
                        ),
                      ],
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
