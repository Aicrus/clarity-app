import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'sign_in_model.dart';
export 'sign_in_model.dart';

class SignInWidget extends StatefulWidget {
  const SignInWidget({super.key});

  @override
  State<SignInWidget> createState() => _SignInWidgetState();
}

class _SignInWidgetState extends State<SignInWidget> {
  late SignInModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SignInModel());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'signIn'});
    _model.emailTextController ??= TextEditingController();
    _model.textFieldFocusNode1 ??= FocusNode();

    _model.passwordTextController ??= TextEditingController();
    _model.textFieldFocusNode2 ??= FocusNode();

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
        title: 'signIn',
        color: FlutterFlowTheme.of(context).primary.withAlpha(0XFF),
        child: GestureDetector(
          onTap: () => _model.unfocusNode.canRequestFocus
              ? FocusScope.of(context).requestFocus(_model.unfocusNode)
              : FocusScope.of(context).unfocus(),
          child: Scaffold(
            key: scaffoldKey,
            appBar: AppBar(
              backgroundColor: FlutterFlowTheme.of(context).primary,
              automaticallyImplyLeading: false,
              leading: FlutterFlowIconButton(
                borderColor: Colors.transparent,
                borderRadius: 30.0,
                borderWidth: 1.0,
                buttonSize: 60.0,
                icon: Icon(
                  Icons.arrow_back_rounded,
                  color: FlutterFlowTheme.of(context).titles,
                  size: 30.0,
                ),
                onPressed: () async {
                  logFirebaseEvent('SIGN_IN_arrow_back_rounded_ICN_ON_TAP');
                  logFirebaseEvent('IconButton_navigate_back');
                  context.safePop();
                },
              ),
              title: InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  logFirebaseEvent('SIGN_IN_PAGE_Text_bg3ws263_ON_TAP');
                  logFirebaseEvent('Text_navigate_to');

                  context.goNamed('homeM');
                },
                child: Text(
                  'Accedi',
                  style: FlutterFlowTheme.of(context).titleSmall.override(
                        fontFamily: 'Istok Web',
                        color: FlutterFlowTheme.of(context).topNavBarTextColor,
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ),
              actions: const [],
              centerTitle: true,
              elevation: 3.0,
            ),
            body: Container(
              width: MediaQuery.sizeOf(context).width * 1.0,
              height: double.infinity,
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
                  children: [
                    Container(
                      width: 350.0,
                      decoration: const BoxDecoration(),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Align(
                            alignment: const AlignmentDirectional(-1.0, 0.0),
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  16.0, 32.0, 0.0, 0.0),
                              child: Text(
                                'Email',
                                style: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      fontFamily: 'Istok Web',
                                      color:
                                          FlutterFlowTheme.of(context).titles,
                                    ),
                              ),
                            ),
                          ),
                          Container(
                            height: 48.0,
                            decoration: BoxDecoration(
                              color:
                                  FlutterFlowTheme.of(context).textinputBGColor,
                              borderRadius: BorderRadius.circular(6.0),
                              border: Border.all(
                                color: FlutterFlowTheme.of(context)
                                    .textInputBorderColor,
                                width: 2.0,
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  16.0, 0.0, 0.0, 0.0),
                              child: SizedBox(
                                width: 350.0,
                                child: TextFormField(
                                  controller: _model.emailTextController,
                                  focusNode: _model.textFieldFocusNode1,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    hintText: 'La tua email',
                                    hintStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Open Sans',
                                          color: FlutterFlowTheme.of(context)
                                              .textInputColor,
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.normal,
                                        ),
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide: const BorderSide(
                                        color: Color(0x00000000),
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide: const BorderSide(
                                        color: Color(0x00000000),
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    errorBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    focusedErrorBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Open Sans',
                                        color: FlutterFlowTheme.of(context)
                                            .typedInpueTextFieldColor,
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.normal,
                                      ),
                                  keyboardType: TextInputType.emailAddress,
                                  validator: _model.emailTextControllerValidator
                                      .asValidator(context),
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: const AlignmentDirectional(-1.0, 0.0),
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  16.0, 18.0, 0.0, 0.0),
                              child: Text(
                                'Password',
                                style: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      fontFamily: 'Istok Web',
                                      color:
                                          FlutterFlowTheme.of(context).titles,
                                    ),
                              ),
                            ),
                          ),
                          Container(
                            height: 48.0,
                            decoration: BoxDecoration(
                              color:
                                  FlutterFlowTheme.of(context).textinputBGColor,
                              borderRadius: BorderRadius.circular(6.0),
                              border: Border.all(
                                color: FlutterFlowTheme.of(context)
                                    .textInputBorderColor,
                                width: 2.0,
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  16.0, 0.0, 0.0, 0.0),
                              child: SizedBox(
                                width: 350.0,
                                child: TextFormField(
                                  controller: _model.passwordTextController,
                                  focusNode: _model.textFieldFocusNode2,
                                  obscureText: !_model.passwordVisibility,
                                  decoration: InputDecoration(
                                    hintText: 'Inserisci la tua password',
                                    hintStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Open Sans',
                                          color: FlutterFlowTheme.of(context)
                                              .textInputColor,
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.normal,
                                        ),
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide: const BorderSide(
                                        color: Color(0x00000000),
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide: const BorderSide(
                                        color: Color(0x00000000),
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    errorBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    focusedErrorBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    suffixIcon: InkWell(
                                      onTap: () => setState(
                                        () => _model.passwordVisibility =
                                            !_model.passwordVisibility,
                                      ),
                                      focusNode: FocusNode(skipTraversal: true),
                                      child: Icon(
                                        _model.passwordVisibility
                                            ? Icons.visibility_outlined
                                            : Icons.visibility_off_outlined,
                                        size: 22,
                                      ),
                                    ),
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Open Sans',
                                        color: FlutterFlowTheme.of(context)
                                            .typedInpueTextFieldColor,
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.normal,
                                      ),
                                  validator: _model
                                      .passwordTextControllerValidator
                                      .asValidator(context),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 32.0, 0.0, 0.0),
                            child: FFButtonWidget(
                              onPressed: () async {
                                logFirebaseEvent(
                                    'SIGN_IN_PAGE_ACCEDI_BTN_ON_TAP');
                                logFirebaseEvent('Button_auth');
                                GoRouter.of(context).prepareAuthEvent();

                                final user = await authManager.signInWithEmail(
                                  context,
                                  _model.emailTextController.text,
                                  _model.passwordTextController.text,
                                );
                                if (user == null) {
                                  return;
                                }
                                logFirebaseEvent('Button_navigate_to');

                                context.pushNamedAuth(
                                    'onboardingRoute', context.mounted);
                              },
                              text: 'Accedi',
                              options: FFButtonOptions(
                                width: 350.0,
                                height: 56.0,
                                padding: const EdgeInsets.all(0.0),
                                iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: FlutterFlowTheme.of(context)
                                    .loginButtonColor,
                                textStyle: FlutterFlowTheme.of(context)
                                    .headlineMedium
                                    .override(
                                      fontFamily: 'Istok Web',
                                      color: FlutterFlowTheme.of(context)
                                          .logInTextColorButton,
                                    ),
                                borderRadius: BorderRadius.circular(40.0),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 32.0, 0.0, 0.0),
                            child: Text(
                              'Non ricordo la password.',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Open Sans',
                                    color: FlutterFlowTheme.of(context)
                                        .longtextColor,
                                    fontSize: 16.0,
                                  ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 5.0, 0.0, 0.0),
                            child: InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                logFirebaseEvent(
                                    'SIGN_IN_PAGE_Text_rlppusyd_ON_TAP');
                                logFirebaseEvent('Text_navigate_to');

                                context.pushNamed('resetPassword');
                              },
                              child: Text(
                                'Reimposta password',
                                style: FlutterFlowTheme.of(context)
                                    .labelLarge
                                    .override(
                                      fontFamily: 'Open Sans',
                                      color: FlutterFlowTheme.of(context)
                                          .clickableTextColor,
                                      fontWeight: FontWeight.bold,
                                      decoration: TextDecoration.underline,
                                    ),
                              ),
                            ),
                          ),
                          isAndroid
                              ? Container()
                              : Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 32.0, 0.0, 0.0),
                                  child: FFButtonWidget(
                                    onPressed: () async {
                                      logFirebaseEvent(
                                          'SIGN_IN_ACCESSO_CON_APPLE_BTN_ON_TAP');
                                      logFirebaseEvent('Button_auth');
                                      GoRouter.of(context).prepareAuthEvent();
                                      final user = await authManager
                                          .signInWithApple(context);
                                      if (user == null) {
                                        return;
                                      }
                                      logFirebaseEvent('Button_navigate_to');

                                      context.goNamedAuth(
                                          'onboardingRoute', context.mounted);
                                    },
                                    text: 'Accesso con Apple',
                                    icon: Icon(
                                      Icons.apple,
                                      color: FlutterFlowTheme.of(context)
                                          .buttonTextColor,
                                      size: 24.0,
                                    ),
                                    options: FFButtonOptions(
                                      width: double.infinity,
                                      height: 56.0,
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 0.0),
                                      iconPadding:
                                          const EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color: FlutterFlowTheme.of(context)
                                          .buttonBackGround,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .titleLarge
                                          .override(
                                            fontFamily: 'Istok Web',
                                            color: FlutterFlowTheme.of(context)
                                                .buttonTextColor,
                                            fontWeight: FontWeight.bold,
                                          ),
                                      elevation: 1.0,
                                      borderRadius: BorderRadius.circular(50.0),
                                    ),
                                  ),
                                ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 32.0, 0.0, 0.0),
                            child: FFButtonWidget(
                              onPressed: () async {
                                logFirebaseEvent(
                                    'SIGN_IN_ACCESSO_CON_GOOGLE_BTN_ON_TAP');
                                logFirebaseEvent('Button_auth');
                                GoRouter.of(context).prepareAuthEvent();
                                final user =
                                    await authManager.signInWithGoogle(context);
                                if (user == null) {
                                  return;
                                }
                                logFirebaseEvent('Button_navigate_to');

                                context.goNamedAuth(
                                    'onboardingRoute', context.mounted);
                              },
                              text: 'Accesso con Google',
                              icon: FaIcon(
                                FontAwesomeIcons.google,
                                color: FlutterFlowTheme.of(context)
                                    .buttonTextColor,
                                size: 24.0,
                              ),
                              options: FFButtonOptions(
                                width: double.infinity,
                                height: 56.0,
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: FlutterFlowTheme.of(context)
                                    .buttonBackGround,
                                textStyle: FlutterFlowTheme.of(context)
                                    .titleLarge
                                    .override(
                                      fontFamily: 'Istok Web',
                                      color: FlutterFlowTheme.of(context)
                                          .buttonTextColor,
                                      fontWeight: FontWeight.bold,
                                    ),
                                elevation: 1.0,
                                borderRadius: BorderRadius.circular(50.0),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 32.0, 0.0, 0.0),
                            child: FFButtonWidget(
                              onPressed: () async {
                                logFirebaseEvent(
                                    'SIGN_IN_ACCESSO_CON_FACEBOOK_BTN_ON_TAP');
                                logFirebaseEvent('Button_auth');
                                GoRouter.of(context).prepareAuthEvent();
                                final user = await authManager
                                    .signInWithFacebook(context);
                                if (user == null) {
                                  return;
                                }
                                logFirebaseEvent('Button_navigate_to');

                                context.goNamedAuth(
                                    'onboardingRoute', context.mounted);
                              },
                              text: 'Accesso con Facebook',
                              icon: Icon(
                                Icons.facebook,
                                color: FlutterFlowTheme.of(context)
                                    .buttonTextColor,
                                size: 24.0,
                              ),
                              options: FFButtonOptions(
                                width: double.infinity,
                                height: 56.0,
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                iconPadding: const EdgeInsets.all(0.0),
                                color: FlutterFlowTheme.of(context)
                                    .buttonBackGround,
                                textStyle: FlutterFlowTheme.of(context)
                                    .titleMedium
                                    .override(
                                      fontFamily: 'Istok Web',
                                      color: FlutterFlowTheme.of(context)
                                          .buttonTextColor,
                                      fontWeight: FontWeight.bold,
                                    ),
                                elevation: 1.0,
                                borderRadius: BorderRadius.circular(50.0),
                              ),
                            ),
                          ),
                          Container(
                            width: double.infinity,
                            height: 100.0,
                            decoration: const BoxDecoration(),
                          ),
                        ],
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
