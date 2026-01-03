import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'menu_model.dart';
export 'menu_model.dart';

class MenuWidget extends StatefulWidget {
  const MenuWidget({super.key});

  @override
  State<MenuWidget> createState() => _MenuWidgetState();
}

class _MenuWidgetState extends State<MenuWidget> {
  late MenuModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MenuModel());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'menu'});
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
        title: 'menu',
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
                padding:
                    const EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 15.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Align(
                      alignment: const AlignmentDirectional(0.0, 0.0),
                      child: Container(
                        decoration: const BoxDecoration(),
                      ),
                    ),
                    InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        logFirebaseEvent('MENU_PAGE_Container_i4p8n6mr_ON_TAP');
                        logFirebaseEvent('Container_navigate_to');

                        context.goNamed('onboardingRoute');
                      },
                      child: Container(
                        width: 40.0,
                        height: 40.0,
                        decoration: const BoxDecoration(),
                        child: InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            logFirebaseEvent('MENU_PAGE_Icon_l18jmcc1_ON_TAP');
                            logFirebaseEvent('Icon_navigate_back');
                            context.safePop();
                          },
                          child: Icon(
                            Icons.close,
                            color: FlutterFlowTheme.of(context).appBarIconColor,
                            size: 24.0,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              actions: const [],
              centerTitle: true,
              elevation: 2.0,
            ),
            body: Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: MediaQuery.sizeOf(context).height * 1.0,
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
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Align(
                          alignment: const AlignmentDirectional(0.0, 0.0),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 15.0, 0.0, 0.0),
                            child: Container(
                              width: 350.0,
                              height: 416.0,
                              decoration: const BoxDecoration(),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding:
                                        const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 80.0, 0.0, 0.0),
                                    child: Container(
                                      width: 350.0,
                                      height: 180.0,
                                      decoration: const BoxDecoration(),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              logFirebaseEvent(
                                                  'MENU_PAGE_Row_tv9zba62_ON_TAP');
                                              logFirebaseEvent(
                                                  'Row_navigate_to');

                                              context.pushNamed('linkUtili');
                                            },
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                if (Theme.of(context)
                                                        .brightness ==
                                                    Brightness.light)
                                                  Container(
                                                    width: 24.0,
                                                    height: 24.0,
                                                    clipBehavior:
                                                        Clip.antiAlias,
                                                    decoration:
                                                        const BoxDecoration(
                                                      shape: BoxShape.circle,
                                                    ),
                                                    child: SvgPicture.asset(
                                                      'assets/images/Link.svg',
                                                      fit: BoxFit.cover,
                                                    ),
                                                  ),
                                                if (Theme.of(context)
                                                        .brightness ==
                                                    Brightness.dark)
                                                  Container(
                                                    width: 24.0,
                                                    height: 24.0,
                                                    clipBehavior:
                                                        Clip.antiAlias,
                                                    decoration:
                                                        const BoxDecoration(
                                                      shape: BoxShape.circle,
                                                    ),
                                                    child: SvgPicture.asset(
                                                      'assets/images/Link_copie.svg',
                                                      fit: BoxFit.cover,
                                                    ),
                                                  ),
                                                Text(
                                                  'Link',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .labelLarge
                                                      .override(
                                                        fontFamily: 'Open Sans',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .longtextColor,
                                                        fontSize: 18.0,
                                                      ),
                                                ),
                                              ]
                                                  .divide(const SizedBox(
                                                      width: 8.0))
                                                  .addToStart(const SizedBox(
                                                      width: 4.0))
                                                  .addToEnd(const SizedBox(
                                                      width: 4.0)),
                                            ),
                                          ),
                                          InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              logFirebaseEvent(
                                                  'MENU_PAGE_Row_qc75v562_ON_TAP');
                                              logFirebaseEvent(
                                                  'Row_navigate_to');

                                              context.pushNamed('qna');
                                            },
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                if (Theme.of(context)
                                                        .brightness ==
                                                    Brightness.light)
                                                  Container(
                                                    width: 24.0,
                                                    height: 24.0,
                                                    clipBehavior:
                                                        Clip.antiAlias,
                                                    decoration:
                                                        const BoxDecoration(
                                                      shape: BoxShape.circle,
                                                    ),
                                                    child: SvgPicture.asset(
                                                      'assets/images/Domande_frequenti.svg',
                                                      fit: BoxFit.cover,
                                                    ),
                                                  ),
                                                if (Theme.of(context)
                                                        .brightness ==
                                                    Brightness.dark)
                                                  Container(
                                                    width: 24.0,
                                                    height: 24.0,
                                                    clipBehavior:
                                                        Clip.antiAlias,
                                                    decoration:
                                                        const BoxDecoration(
                                                      shape: BoxShape.circle,
                                                    ),
                                                    child: SvgPicture.asset(
                                                      'assets/images/Domande_frequenti_copie.svg',
                                                      fit: BoxFit.cover,
                                                    ),
                                                  ),
                                                Text(
                                                  'Domande e risposte',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .labelLarge
                                                      .override(
                                                        fontFamily: 'Open Sans',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .longtextColor,
                                                        fontSize: 18.0,
                                                      ),
                                                ),
                                              ]
                                                  .divide(const SizedBox(
                                                      width: 8.0))
                                                  .addToStart(const SizedBox(
                                                      width: 4.0))
                                                  .addToEnd(const SizedBox(
                                                      width: 4.0)),
                                            ),
                                          ),
                                          InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              logFirebaseEvent(
                                                  'MENU_PAGE_Row_lr742b7k_ON_TAP');
                                              logFirebaseEvent(
                                                  'Row_navigate_to');

                                              context.pushNamed('premium');
                                            },
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                if (Theme.of(context)
                                                        .brightness ==
                                                    Brightness.light)
                                                  Container(
                                                    width: 24.0,
                                                    height: 24.0,
                                                    clipBehavior:
                                                        Clip.antiAlias,
                                                    decoration:
                                                        const BoxDecoration(
                                                      shape: BoxShape.circle,
                                                    ),
                                                    child: SvgPicture.asset(
                                                      'assets/images/Premium.svg',
                                                      fit: BoxFit.cover,
                                                    ),
                                                  ),
                                                if (Theme.of(context)
                                                        .brightness ==
                                                    Brightness.dark)
                                                  Container(
                                                    width: 24.0,
                                                    height: 24.0,
                                                    clipBehavior:
                                                        Clip.antiAlias,
                                                    decoration:
                                                        const BoxDecoration(
                                                      shape: BoxShape.circle,
                                                    ),
                                                    child: SvgPicture.asset(
                                                      'assets/images/Premium_copie.svg',
                                                      fit: BoxFit.cover,
                                                    ),
                                                  ),
                                                Text(
                                                  'Accedi a tutti i contenuti',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .labelLarge
                                                      .override(
                                                        fontFamily: 'Open Sans',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .accent1,
                                                        fontSize: 20.0,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                ),
                                              ]
                                                  .divide(const SizedBox(
                                                      width: 8.0))
                                                  .addToStart(const SizedBox(
                                                      width: 4.0))
                                                  .addToEnd(const SizedBox(
                                                      width: 4.0)),
                                            ),
                                          ),
                                          InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              logFirebaseEvent(
                                                  'MENU_PAGE_Row_2swykha9_ON_TAP');
                                              logFirebaseEvent(
                                                  'Row_navigate_to');

                                              context.pushNamed('settings');
                                            },
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                if (Theme.of(context)
                                                        .brightness ==
                                                    Brightness.light)
                                                  Container(
                                                    width: 24.0,
                                                    height: 24.0,
                                                    clipBehavior:
                                                        Clip.antiAlias,
                                                    decoration:
                                                        const BoxDecoration(
                                                      shape: BoxShape.circle,
                                                    ),
                                                    child: SvgPicture.asset(
                                                      'assets/images/settings-02.svg',
                                                      fit: BoxFit.cover,
                                                    ),
                                                  ),
                                                if (Theme.of(context)
                                                        .brightness ==
                                                    Brightness.dark)
                                                  Container(
                                                    width: 24.0,
                                                    height: 24.0,
                                                    clipBehavior:
                                                        Clip.antiAlias,
                                                    decoration:
                                                        const BoxDecoration(
                                                      shape: BoxShape.circle,
                                                    ),
                                                    child: SvgPicture.asset(
                                                      'assets/images/settings-02_(1).svg',
                                                      fit: BoxFit.cover,
                                                    ),
                                                  ),
                                                Text(
                                                  'Impostazioni',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .labelLarge
                                                      .override(
                                                        fontFamily: 'Open Sans',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .longtextColor,
                                                        fontSize: 18.0,
                                                      ),
                                                ),
                                              ]
                                                  .divide(const SizedBox(
                                                      width: 8.0))
                                                  .addToStart(const SizedBox(
                                                      width: 4.0))
                                                  .addToEnd(const SizedBox(
                                                      width: 4.0)),
                                            ),
                                          ),
                                          if (valueOrDefault<bool>(
                                                  currentUserDocument?.admin,
                                                  false) &&
                                              responsiveVisibility(
                                                context: context,
                                                phone: false,
                                                tablet: false,
                                                tabletLandscape: false,
                                              ))
                                            AuthUserStreamWidget(
                                              builder: (context) => Container(
                                                decoration:
                                                    const BoxDecoration(),
                                                child: InkWell(
                                                  splashColor:
                                                      Colors.transparent,
                                                  focusColor:
                                                      Colors.transparent,
                                                  hoverColor:
                                                      Colors.transparent,
                                                  highlightColor:
                                                      Colors.transparent,
                                                  onDoubleTap: () async {
                                                    logFirebaseEvent(
                                                        'MENU_PAGE_Row_p56eglyl_ON_DOUBLE_TAP');
                                                    logFirebaseEvent(
                                                        'Row_navigate_to');

                                                    context.pushNamed(
                                                      'adminmenu',
                                                      extra: <String, dynamic>{
                                                        kTransitionInfoKey:
                                                            const TransitionInfo(
                                                          hasTransition: true,
                                                          transitionType:
                                                              PageTransitionType
                                                                  .bottomToTop,
                                                        ),
                                                      },
                                                    );
                                                  },
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      if (Theme.of(context)
                                                              .brightness ==
                                                          Brightness.light)
                                                        Container(
                                                          width: 25.0,
                                                          height: 25.0,
                                                          clipBehavior:
                                                              Clip.antiAlias,
                                                          decoration:
                                                              const BoxDecoration(
                                                            shape:
                                                                BoxShape.circle,
                                                          ),
                                                          child:
                                                              SvgPicture.asset(
                                                            'assets/images/Icon.svg',
                                                            fit: BoxFit.none,
                                                          ),
                                                        ),
                                                      if (Theme.of(context)
                                                              .brightness ==
                                                          Brightness.dark)
                                                        Container(
                                                          width: 24.0,
                                                          height: 24.0,
                                                          clipBehavior:
                                                              Clip.antiAlias,
                                                          decoration:
                                                              const BoxDecoration(
                                                            shape:
                                                                BoxShape.circle,
                                                          ),
                                                          child:
                                                              SvgPicture.asset(
                                                            'assets/images/settings-02_(1).svg',
                                                            fit: BoxFit.cover,
                                                          ),
                                                        ),
                                                      Text(
                                                        'Aggiungere un nuovo contenuto',
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .labelLarge
                                                            .override(
                                                              fontFamily:
                                                                  'Open Sans',
                                                              color: const Color(
                                                                  0xFF1B385A),
                                                              fontSize: 18.0,
                                                            ),
                                                      ),
                                                    ]
                                                        .divide(const SizedBox(
                                                            width: 8.0))
                                                        .addToStart(
                                                            const SizedBox(
                                                                width: 4.0))
                                                        .addToEnd(
                                                            const SizedBox(
                                                                width: 4.0)),
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
                        ),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: const AlignmentDirectional(0.0, 1.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.asset(
                      'assets/images/clarity_bg_img.png',
                      width: double.infinity,
                      height: 300.0,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
