import 'package:clarity/custom_code/widgets/custom_audio_player.dart';
import 'package:provider/provider.dart';

import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'potenziamenti_nav_bar_model.dart';
export 'potenziamenti_nav_bar_model.dart';

class PotenziamentiNavBarWidget extends StatefulWidget {
  const PotenziamentiNavBarWidget({super.key});

  @override
  State<PotenziamentiNavBarWidget> createState() =>
      _PotenziamentiNavBarWidgetState();
}

class _PotenziamentiNavBarWidgetState extends State<PotenziamentiNavBarWidget> {
  late PotenziamentiNavBarModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PotenziamentiNavBarModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final appState = Provider.of<FFAppState>(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(0.0),
          child: BackdropFilter(
            filter: ImageFilter.blur(
              sigmaX: 7.0,
              sigmaY: 7.0,
            ),
            child: Column(
              children: [
                if (appState.audioBar)
                  Column(
                    children: [
                      NavAudioPlayer(),
                      Container(
                        height: 1,
                        color: Colors.blue,
                      ),
                    ],
                  ),
                Container(
                  height: MediaQuery.sizeOf(context).height * 0.1,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).bottomNavbarColorBG,
                  ),
                  child: Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(
                        0.0, 12.0, 0.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            logFirebaseEvent(
                                'POTENZIAMENTI_NAV_BAR_COMP_medita_ON_TAP');
                            logFirebaseEvent('medita_navigate_to');

                            context.pushNamed(
                              'homeM',
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
                            width: 61.0,
                            height: 44.0,
                            decoration: const BoxDecoration(),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  width: 24.0,
                                  height: 24.0,
                                  decoration: const BoxDecoration(),
                                  child: SvgPicture.asset(
                                    Theme.of(context).brightness ==
                                            Brightness.dark
                                        ? 'assets/images/MeditazioniDark.svg'
                                        : 'assets/images/soleblu.svg',
                                    width: 24.0,
                                    height: 24.0,
                                    fit: BoxFit.contain,
                                  ),
                                ),
                                Text(
                                  'Medita',
                                  maxLines: 1,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Istok Web',
                                        color:
                                            FlutterFlowTheme.of(context).titles,
                                        fontSize: 9.0,
                                      ),
                                ),
                              ].divide(const SizedBox(height: 4.0)),
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
                                'POTENZIAMENTI_NAV_BAR_COMP_sonno_ON_TAP');
                            logFirebaseEvent('sonno_navigate_to');

                            context.pushNamed(
                              'homeS',
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
                            width: 61.0,
                            height: 44.0,
                            decoration: const BoxDecoration(),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  width: 24.0,
                                  height: 24.0,
                                  decoration: const BoxDecoration(),
                                  child: SvgPicture.asset(
                                    Theme.of(context).brightness ==
                                            Brightness.dark
                                        ? 'assets/images/Sonno_copie.svg'
                                        : 'assets/images/Sonno.svg',
                                    width: 20.0,
                                    height: 16.0,
                                    fit: BoxFit.contain,
                                  ),
                                ),
                                Text(
                                  'Sonno',
                                  maxLines: 1,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Istok Web',
                                        color:
                                            FlutterFlowTheme.of(context).titles,
                                        fontSize: 9.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                ),
                              ].divide(const SizedBox(height: 4.0)),
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
                                'POTENZIAMENTI_NAV_BAR_potenziamenti_ON_T');
                            logFirebaseEvent('potenziamenti_navigate_to');

                            context.pushNamed(
                              'homeP',
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
                            width: 61.0,
                            height: 44.0,
                            decoration: const BoxDecoration(),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  width: 24.0,
                                  height: 24.0,
                                  decoration: const BoxDecoration(),
                                  child: SvgPicture.asset(
                                    Theme.of(context).brightness ==
                                            Brightness.dark
                                        ? 'assets/images/Realizzazioni.svg'
                                        : 'assets/images/Realizzazioni.svg',
                                    width: 20.0,
                                    height: 16.0,
                                    fit: BoxFit.contain,
                                  ),
                                ),
                                Text(
                                  'Potenziamenti',
                                  maxLines: 1,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Istok Web',
                                        color: FlutterFlowTheme.of(context)
                                            .accent1,
                                        fontSize: 9.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                ),
                              ].divide(const SizedBox(height: 4.0)),
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
                                'POTENZIAMENTI_NAV_BAR_COMP_diario_ON_TAP');
                            logFirebaseEvent('diario_navigate_to');

                            context.pushNamed(
                              'agendaForm',
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
                            width: 61.0,
                            height: 44.0,
                            decoration: const BoxDecoration(),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  width: 24.0,
                                  height: 24.0,
                                  decoration: const BoxDecoration(),
                                  child: SvgPicture.asset(
                                    Theme.of(context).brightness ==
                                            Brightness.dark
                                        ? 'assets/images/Icon.svg'
                                        : 'assets/images/diariook.svg',
                                    width: 20.0,
                                    height: 16.0,
                                    fit: BoxFit.contain,
                                  ),
                                ),
                                Text(
                                  'Diario',
                                  maxLines: 1,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Istok Web',
                                        color:
                                            FlutterFlowTheme.of(context).titles,
                                        fontSize: 9.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                ),
                              ].divide(const SizedBox(height: 4.0)),
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
                                'POTENZIAMENTI_NAV_BAR_impostazioni_ON_TA');
                            logFirebaseEvent('impostazioni_navigate_to');

                            context.pushNamed(
                              'menu',
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
                            width: 61.0,
                            height: 44.0,
                            decoration: const BoxDecoration(),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  width: 24.0,
                                  height: 24.0,
                                  decoration: const BoxDecoration(),
                                  child: SvgPicture.asset(
                                    Theme.of(context).brightness ==
                                            Brightness.dark
                                        ? 'assets/images/Impostazionidark.svg'
                                        : 'assets/images/ImpostazioniLight.svg',
                                    width: 20.0,
                                    height: 16.0,
                                    fit: BoxFit.contain,
                                  ),
                                ),
                                Text(
                                  'Impostazioni',
                                  maxLines: 1,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Istok Web',
                                        color:
                                            FlutterFlowTheme.of(context).titles,
                                        fontSize: 9.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                ),
                              ].divide(const SizedBox(height: 4.0)),
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
      ],
    );
  }
}
