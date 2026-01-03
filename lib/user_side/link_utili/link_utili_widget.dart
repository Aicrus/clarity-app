import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'link_utili_model.dart';
export 'link_utili_model.dart';

class LinkUtiliWidget extends StatefulWidget {
  const LinkUtiliWidget({super.key});

  @override
  State<LinkUtiliWidget> createState() => _LinkUtiliWidgetState();
}

class _LinkUtiliWidgetState extends State<LinkUtiliWidget> {
  late LinkUtiliModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LinkUtiliModel());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'linkUtili'});
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
        title: 'linkUtili',
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
                                  'LINK_UTILI_PAGE_Icon_znxzoh7q_ON_TAP');
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
                      InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          logFirebaseEvent(
                              'LINK_UTILI_PAGE_Icon_onpgmw96_ON_TAP');
                          logFirebaseEvent('Icon_navigate_to');

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
                        child: Icon(
                          Icons.close,
                          color:
                              FlutterFlowTheme.of(context).topNavBarTextColor,
                          size: 24.0,
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
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      width: 350.0,
                      height: 100.0,
                      decoration: const BoxDecoration(),
                      child: Align(
                        alignment: const AlignmentDirectional(0.0, 0.0),
                        child: Text(
                          'Link Utili',
                          textAlign: TextAlign.center,
                          maxLines: 2,
                          style: FlutterFlowTheme.of(context)
                              .headlineLarge
                              .override(
                                fontFamily: 'Istok Web',
                                color: FlutterFlowTheme.of(context).titles,
                                fontSize: 28.0,
                                fontWeight: FontWeight.bold,
                              ),
                        ),
                      ),
                    ),
                    Container(
                      width: 320.0,
                      height: 320.0,
                      decoration: const BoxDecoration(),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.asset(
                          'assets/images/Illustration@2x.png',
                          width: 300.0,
                          height: 200.0,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                      child: FFButtonWidget(
                        onPressed: () async {
                          logFirebaseEvent(
                              'LINK_UTILI_GRUPPO_FACEBOOK_BTN_ON_TAP');
                          logFirebaseEvent('Button_launch_u_r_l');
                          await launchURL(
                              'https://www.facebook.com/groups/clarityapp');
                        },
                        text: 'Gruppo Facebook',
                        options: FFButtonOptions(
                          width: 350.0,
                          height: 56.0,
                          padding: const EdgeInsets.all(0.0),
                          iconPadding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color:
                              FlutterFlowTheme.of(context).transparentButtonsBG,
                          textStyle: FlutterFlowTheme.of(context)
                              .headlineMedium
                              .override(
                                fontFamily: 'Istok Web',
                                color: FlutterFlowTheme.of(context)
                                    .audioTeoriaTextButtonColor,
                              ),
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context)
                                .audioTeoriaButtonBorderColor,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(40.0),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                      child: FFButtonWidget(
                        onPressed: () async {
                          logFirebaseEvent(
                              'LINK_UTILI_INSTAGRAM_DI_GENNA_BTN_ON_TAP');
                          logFirebaseEvent('Button_launch_u_r_l');
                          await launchURL(
                              'https://www.instagram.com/gennaro_romagnoli/');
                        },
                        text: 'Instagram di Genna',
                        options: FFButtonOptions(
                          width: 350.0,
                          height: 56.0,
                          padding: const EdgeInsets.all(0.0),
                          iconPadding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color:
                              FlutterFlowTheme.of(context).transparentButtonsBG,
                          textStyle: FlutterFlowTheme.of(context)
                              .headlineMedium
                              .override(
                                fontFamily: 'Istok Web',
                                color: FlutterFlowTheme.of(context)
                                    .audioTeoriaTextButtonColor,
                              ),
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context)
                                .audioTeoriaButtonBorderColor,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(40.0),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                      child: FFButtonWidget(
                        onPressed: () async {
                          logFirebaseEvent(
                              'LINK_UTILI_PER_CORSI_DI_PSINEL_BTN_ON_TA');
                          logFirebaseEvent('Button_launch_u_r_l');
                          await launchURL('https://psinel.com/corsi-online/');
                        },
                        text: 'PerCorsi di Psinel',
                        options: FFButtonOptions(
                          width: 350.0,
                          height: 56.0,
                          padding: const EdgeInsets.all(0.0),
                          iconPadding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color:
                              FlutterFlowTheme.of(context).transparentButtonsBG,
                          textStyle: FlutterFlowTheme.of(context)
                              .headlineMedium
                              .override(
                                fontFamily: 'Istok Web',
                                color: FlutterFlowTheme.of(context)
                                    .audioTeoriaTextButtonColor,
                              ),
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context)
                                .audioTeoriaButtonBorderColor,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(40.0),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
