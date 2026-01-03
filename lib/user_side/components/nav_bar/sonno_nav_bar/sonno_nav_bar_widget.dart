import 'package:clarity/custom_code/widgets/custom_audio_player.dart';
import 'package:provider/provider.dart';

import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'sonno_nav_bar_model.dart';
export 'sonno_nav_bar_model.dart';

class SonnoNavBarWidget extends StatefulWidget {
  const SonnoNavBarWidget({super.key});

  @override
  State<SonnoNavBarWidget> createState() => _SonnoNavBarWidgetState();
}

class _SonnoNavBarWidgetState extends State<SonnoNavBarWidget> {
  late SonnoNavBarModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SonnoNavBarModel());

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
                                'SONNO_NAV_BAR_COMP_medita_ON_TAP');
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
                            logFirebaseEvent('SONNO_NAV_BAR_COMP_sonno_ON_TAP');
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
                                        ? 'assets/images/sonnogiallo.svg'
                                        : 'assets/images/sonnogiallo.svg',
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
                                'SONNO_NAV_BAR_COMP_potenziamenti_ON_TAP');
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
                                        ? 'assets/images/rocket-02.svg'
                                        : 'assets/images/Potenziamenti.svg',
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
                                'SONNO_NAV_BAR_COMP_diario_ON_TAP');
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
                                'SONNO_NAV_BAR_COMP_impostazioni_ON_TAP');
                            logFirebaseEvent('impostazioni_navigate_to');

                            context.pushNamed('menu');
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
