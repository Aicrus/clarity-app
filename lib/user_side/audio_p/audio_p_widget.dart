import 'package:clarity/custom_code/widgets/custom_audio_player.dart';

import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/user_side/components/nav_bar/potenziamenti_nav_bar/potenziamenti_nav_bar_widget.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'audio_p_model.dart';
export 'audio_p_model.dart';

class AudioPWidget extends StatefulWidget {
  const AudioPWidget({
    super.key,
    required this.docPotenzia,
  });

  final PotenziamentiRecord? docPotenzia;

  @override
  State<AudioPWidget> createState() => _AudioPWidgetState();
}

class _AudioPWidgetState extends State<AudioPWidget> {
  late AudioPModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AudioPModel());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'audioP'});
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
        title: 'audioP',
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
                padding:
                    const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 20.0),
                child: Container(
                  width: double.infinity,
                  height: 56.0,
                  decoration: const BoxDecoration(),
                  child: Row(
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
                                  'AUDIO_P_PAGE_Container_885ihm9h_ON_TAP');
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
                      InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          logFirebaseEvent(
                              'AUDIO_P_PAGE_Container_358weh92_ON_TAP');
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
                                  'AUDIO_P_PAGE_Image_o6sbwdrn_ON_TAP');
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
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
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
                  Container(
                    width: double.infinity,
                    decoration: const BoxDecoration(),
                    child: Align(
                      alignment: const AlignmentDirectional(0.0, 1.0),
                      child: Image.asset(
                        'assets/images/clarity_bg_img.png',
                        width: double.infinity,
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                  ),
                  Align(
                    alignment: const AlignmentDirectional(0.0, -1.0),
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 350.0,
                            decoration: const BoxDecoration(),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                AutoSizeText(
                                  valueOrDefault<String>(
                                    widget.docPotenzia?.title,
                                    'ND',
                                  ),
                                  textAlign: TextAlign.center,
                                  maxLines: 2,
                                  style: FlutterFlowTheme.of(context)
                                      .headlineLarge
                                      .override(
                                        fontFamily: 'Istok Web',
                                        color:
                                            FlutterFlowTheme.of(context).titles,
                                        fontSize: 28.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                  minFontSize: 20.0,
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 16.0, 0.0, 0.0),
                                  child: Text(
                                    valueOrDefault<String>(
                                      widget.docPotenzia?.susubtitle,
                                      'ND',
                                    ),
                                    textAlign: TextAlign.center,
                                    maxLines: 15,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Open Sans',
                                          color: FlutterFlowTheme.of(context)
                                              .subTextColor,
                                          fontSize: 18.0,
                                          fontWeight: FontWeight.normal,
                                        ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Flexible(
                            child: Container(
                              width: 350.0,
                              decoration: const BoxDecoration(),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  if (widget.docPotenzia?.isTeoria ?? true)
                                    Container(
                                      height: 115.0,
                                      decoration: const BoxDecoration(),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Text(
                                            'Teoria:',
                                            style: FlutterFlowTheme.of(context)
                                                .headlineLarge
                                                .override(
                                                  fontFamily: 'Istok Web',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .titles,
                                                  fontSize: 28.0,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                          ),
                                          StreamBuilder<
                                              List<AudioTeoriaPotenziaRecord>>(
                                            stream:
                                                queryAudioTeoriaPotenziaRecord(
                                              queryBuilder:
                                                  (audioTeoriaPotenziaRecord) =>
                                                      audioTeoriaPotenziaRecord
                                                          .where(
                                                            'LessonTypeRef',
                                                            isEqualTo: widget
                                                                .docPotenzia
                                                                ?.reference,
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
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .accent3,
                                                      size: 50.0,
                                                    ),
                                                  ),
                                                );
                                              }
                                              List<AudioTeoriaPotenziaRecord>
                                                  rowAudioTeoriaPotenziaRecordList =
                                                  snapshot.data!;
                                              return SingleChildScrollView(
                                                scrollDirection:
                                                    Axis.horizontal,
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: List.generate(
                                                      rowAudioTeoriaPotenziaRecordList
                                                          .length, (rowIndex) {
                                                    final rowAudioTeoriaPotenziaRecord =
                                                        rowAudioTeoriaPotenziaRecordList[
                                                            rowIndex];
                                                    return FFButtonWidget(
                                                      onPressed: () async {
                                                        logFirebaseEvent(
                                                            'AUDIO_P_PAGE_10_MIN_BTN_ON_TAP');
                                                        logFirebaseEvent(
                                                            'Button_bottom_sheet');

                                                        final audio =
                                                            Audio.network(
                                                          rowAudioTeoriaPotenziaRecord
                                                              .audioTeoria,
                                                          metas: Metas(
                                                            id: rowAudioTeoriaPotenziaRecord
                                                                .title,
                                                            title:
                                                                rowAudioTeoriaPotenziaRecord
                                                                    .title,
                                                            image: MetasImage(
                                                              path: rowAudioTeoriaPotenziaRecord
                                                                  .imageAudio,
                                                              type: ImageType
                                                                  .network,
                                                            ),
                                                          ),
                                                        );
                                                        AudioPlayerManager()
                                                            .play(audio);
                                                      },
                                                      text:
                                                          '${rowAudioTeoriaPotenziaRecord.length} min.',
                                                      icon: const Icon(
                                                        Icons
                                                            .play_arrow_outlined,
                                                        size: 35.0,
                                                      ),
                                                      options: FFButtonOptions(
                                                        width: 150.0,
                                                        height: 56.0,
                                                        padding:
                                                            const EdgeInsets
                                                                .all(0.0),
                                                        iconPadding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(0.0,
                                                                0.0, 0.0, 0.0),
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .audioTeoriaButtonFillColor,
                                                        textStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .headlineMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Istok Web',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .audioTeoriaTextButtonColor,
                                                                ),
                                                        borderSide: BorderSide(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .audioTeoriaButtonBorderColor,
                                                          width: 2.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(40.0),
                                                      ),
                                                    );
                                                  }).divide(const SizedBox(
                                                      width: 16.0)),
                                                ),
                                              );
                                            },
                                          ),
                                        ].divide(const SizedBox(height: 16.0)),
                                      ),
                                    ),
                                  if (widget.docPotenzia?.isPratica ?? true)
                                    Container(
                                      height: 115.0,
                                      decoration: const BoxDecoration(),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Text(
                                            'Pratica:',
                                            style: FlutterFlowTheme.of(context)
                                                .headlineLarge
                                                .override(
                                                  fontFamily: 'Istok Web',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .titles,
                                                  fontSize: 28.0,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                          ),
                                          StreamBuilder<
                                              List<AudioPraticaPotenziaRecord>>(
                                            stream:
                                                queryAudioPraticaPotenziaRecord(
                                              queryBuilder:
                                                  (audioPraticaPotenziaRecord) =>
                                                      audioPraticaPotenziaRecord
                                                          .where(
                                                            'LessonTypeRef',
                                                            isEqualTo: widget
                                                                .docPotenzia
                                                                ?.reference,
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
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .accent3,
                                                      size: 50.0,
                                                    ),
                                                  ),
                                                );
                                              }
                                              List<AudioPraticaPotenziaRecord>
                                                  rowAudioPraticaPotenziaRecordList =
                                                  snapshot.data!;
                                              return SingleChildScrollView(
                                                scrollDirection:
                                                    Axis.horizontal,
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceEvenly,
                                                  children: List.generate(
                                                      rowAudioPraticaPotenziaRecordList
                                                          .length, (rowIndex) {
                                                    final rowAudioPraticaPotenziaRecord =
                                                        rowAudioPraticaPotenziaRecordList[
                                                            rowIndex];
                                                    return FFButtonWidget(
                                                      onPressed: () async {
                                                        logFirebaseEvent(
                                                            'AUDIO_P_PAGE_6_MIN_BTN_ON_TAP');
                                                        logFirebaseEvent(
                                                            'Button_bottom_sheet');

                                                        final audio =
                                                            Audio.network(
                                                          rowAudioPraticaPotenziaRecord
                                                              .audioPratica,
                                                          metas: Metas(
                                                            id: rowAudioPraticaPotenziaRecord
                                                                .title,
                                                            title:
                                                                rowAudioPraticaPotenziaRecord
                                                                    .title,
                                                            image: MetasImage(
                                                              path: rowAudioPraticaPotenziaRecord
                                                                  .imageAudio,
                                                              type: ImageType
                                                                  .network,
                                                            ),
                                                          ),
                                                        );
                                                        AudioPlayerManager()
                                                            .play(audio);
                                                      },
                                                      text:
                                                          '${rowAudioPraticaPotenziaRecord.length} min.',
                                                      icon: const Icon(
                                                        Icons
                                                            .play_arrow_outlined,
                                                        size: 35.0,
                                                      ),
                                                      options: FFButtonOptions(
                                                        width: 150.0,
                                                        height: 56.0,
                                                        padding:
                                                            const EdgeInsets
                                                                .all(0.0),
                                                        iconPadding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(0.0,
                                                                0.0, 0.0, 0.0),
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .praticaButtonFillColor,
                                                        textStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .headlineMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Istok Web',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .praticaButtonTextColor,
                                                                ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(40.0),
                                                      ),
                                                    );
                                                  }).divide(const SizedBox(
                                                      width: 16.0)),
                                                ),
                                              );
                                            },
                                          ),
                                        ].divide(const SizedBox(height: 16.0)),
                                      ),
                                    ),
                                  if (widget.docPotenzia?.isAscolti ?? true)
                                    Container(
                                      height: 115.0,
                                      decoration: const BoxDecoration(),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Text(
                                            'Ascolti:',
                                            style: FlutterFlowTheme.of(context)
                                                .headlineLarge
                                                .override(
                                                  fontFamily: 'Istok Web',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .titles,
                                                  fontSize: 28.0,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                          ),
                                          StreamBuilder<
                                              List<AscoltiPotenziaRecord>>(
                                            stream: queryAscoltiPotenziaRecord(
                                              queryBuilder:
                                                  (ascoltiPotenziaRecord) =>
                                                      ascoltiPotenziaRecord
                                                          .where(
                                                            'LessonTypeRef',
                                                            isEqualTo: widget
                                                                .docPotenzia
                                                                ?.reference,
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
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .accent3,
                                                      size: 50.0,
                                                    ),
                                                  ),
                                                );
                                              }
                                              List<AscoltiPotenziaRecord>
                                                  rowAscoltiPotenziaRecordList =
                                                  snapshot.data!;
                                              return SingleChildScrollView(
                                                scrollDirection:
                                                    Axis.horizontal,
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceEvenly,
                                                  children: List.generate(
                                                      rowAscoltiPotenziaRecordList
                                                          .length, (rowIndex) {
                                                    final rowAscoltiPotenziaRecord =
                                                        rowAscoltiPotenziaRecordList[
                                                            rowIndex];
                                                    return FFButtonWidget(
                                                      onPressed: () async {
                                                        logFirebaseEvent(
                                                            'AUDIO_P_PAGE_6_MIN_BTN_ON_TAP');
                                                        logFirebaseEvent(
                                                            'Button_bottom_sheet');
                                                        final audio =
                                                            Audio.network(
                                                          rowAscoltiPotenziaRecord
                                                              .audio,
                                                          metas: Metas(
                                                            id: rowAscoltiPotenziaRecord
                                                                .title,
                                                            title:
                                                                rowAscoltiPotenziaRecord
                                                                    .title,
                                                            image: MetasImage(
                                                              path: rowAscoltiPotenziaRecord
                                                                  .imageAudio,
                                                              type: ImageType
                                                                  .network,
                                                            ),
                                                          ),
                                                        );
                                                        AudioPlayerManager()
                                                            .play(audio);
                                                      },
                                                      text:
                                                          '${rowAscoltiPotenziaRecord.length} min.',
                                                      icon: const Icon(
                                                        Icons
                                                            .play_arrow_outlined,
                                                        size: 35.0,
                                                      ),
                                                      options: FFButtonOptions(
                                                        width: 150.0,
                                                        height: 56.0,
                                                        padding:
                                                            const EdgeInsets
                                                                .all(0.0),
                                                        iconPadding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(0.0,
                                                                0.0, 0.0, 0.0),
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .praticaButtonFillColor,
                                                        textStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .headlineMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Istok Web',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .praticaButtonTextColor,
                                                                ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(40.0),
                                                      ),
                                                    );
                                                  }).divide(const SizedBox(
                                                      width: 16.0)),
                                                ),
                                              );
                                            },
                                          ),
                                        ].divide(const SizedBox(height: 16.0)),
                                      ),
                                    ),
                                ]
                                    .divide(const SizedBox(height: 24.0))
                                    .addToStart(const SizedBox(height: 40.0)),
                              ),
                            ),
                          ),
                        ]
                            .addToStart(const SizedBox(height: 25.0))
                            .addToEnd(const SizedBox(height: 80.0)),
                      ),
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
