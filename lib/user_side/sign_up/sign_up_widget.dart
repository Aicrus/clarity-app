import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/user_side/components/terms_service/terms_service_widget.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'sign_up_model.dart';
export 'sign_up_model.dart';

class SignUpWidget extends StatefulWidget {
  const SignUpWidget({super.key});

  @override
  State<SignUpWidget> createState() => _SignUpWidgetState();
}

class _SignUpWidgetState extends State<SignUpWidget> {
  late SignUpModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SignUpModel());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'signUp'});
    _model.emailTextController ??= TextEditingController();
    _model.textFieldFocusNode1 ??= FocusNode();

    _model.passwordTextController ??= TextEditingController();
    _model.textFieldFocusNode2 ??= FocusNode();

    _model.confirmPasswordTextController ??= TextEditingController();
    _model.textFieldFocusNode3 ??= FocusNode();

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
        title: 'signUp',
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
                  Icons.arrow_back,
                  color: FlutterFlowTheme.of(context).topNavBarTextColor,
                  size: 30.0,
                ),
                onPressed: () async {
                  logFirebaseEvent('SIGN_UP_PAGE_arrow_back_ICN_ON_TAP');
                  logFirebaseEvent('IconButton_navigate_to');

                  context.pushNamed('authRoute');
                },
              ),
              title: Text(
                'Iscriviti',
                style: FlutterFlowTheme.of(context).titleSmall.override(
                      fontFamily: 'Istok Web',
                      color: FlutterFlowTheme.of(context).topNavBarTextColor,
                    ),
              ),
              actions: const [],
              centerTitle: true,
              elevation: 3.0,
            ),
            body: Container(
              width: double.infinity,
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
              child: Align(
                alignment: const AlignmentDirectional(0.0, 0.0),
                child: Padding(
                  padding:
                      const EdgeInsetsDirectional.fromSTEB(0.0, 32.0, 0.0, 0.0),
                  child: Container(
                    width: 350.0,
                    height: double.infinity,
                    decoration: const BoxDecoration(),
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Form(
                            key: _model.formKey,
                            autovalidateMode: AutovalidateMode.disabled,
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Align(
                                  alignment:
                                      const AlignmentDirectional(-1.0, 0.0),
                                  child: Padding(
                                    padding:
                                        const EdgeInsetsDirectional.fromSTEB(
                                            16.0, 0.0, 0.0, 0.0),
                                    child: Text(
                                      'Email',
                                      style: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .override(
                                            fontFamily: 'Istok Web',
                                            color: FlutterFlowTheme.of(context)
                                                .titles,
                                          ),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 48.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .textinputBGColor,
                                    borderRadius: BorderRadius.circular(6.0),
                                    border: Border.all(
                                      color: FlutterFlowTheme.of(context)
                                          .textInputBorderColor,
                                      width: 2.0,
                                    ),
                                  ),
                                  child: Padding(
                                    padding:
                                        const EdgeInsetsDirectional.fromSTEB(
                                            16.0, 0.0, 0.0, 0.0),
                                    child: SizedBox(
                                      width: 350.0,
                                      child: TextFormField(
                                        controller: _model.emailTextController,
                                        focusNode: _model.textFieldFocusNode1,
                                        obscureText: false,
                                        decoration: InputDecoration(
                                          labelStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Open Sans',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .typedInpueTextFieldColor,
                                                    fontSize: 16.0,
                                                    fontWeight:
                                                        FontWeight.normal,
                                                  ),
                                          hintText: 'La tua email',
                                          enabledBorder: UnderlineInputBorder(
                                            borderSide: const BorderSide(
                                              color: Color(0x00000000),
                                              width: 2.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                          focusedBorder: UnderlineInputBorder(
                                            borderSide: const BorderSide(
                                              color: Color(0x00000000),
                                              width: 2.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                          errorBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .error,
                                              width: 2.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                          focusedErrorBorder:
                                              UnderlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .error,
                                              width: 2.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Open Sans',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .textInputColor,
                                              fontSize: 16.0,
                                              fontWeight: FontWeight.normal,
                                            ),
                                        validator: _model
                                            .emailTextControllerValidator
                                            .asValidator(context),
                                      ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment:
                                      const AlignmentDirectional(-1.0, 0.0),
                                  child: Padding(
                                    padding:
                                        const EdgeInsetsDirectional.fromSTEB(
                                            16.0, 18.0, 0.0, 0.0),
                                    child: Text(
                                      'Password',
                                      style: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .override(
                                            fontFamily: 'Istok Web',
                                            color: FlutterFlowTheme.of(context)
                                                .titles,
                                          ),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 48.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .textinputBGColor,
                                    borderRadius: BorderRadius.circular(6.0),
                                    border: Border.all(
                                      color: FlutterFlowTheme.of(context)
                                          .textInputBorderColor,
                                      width: 2.0,
                                    ),
                                  ),
                                  child: Padding(
                                    padding:
                                        const EdgeInsetsDirectional.fromSTEB(
                                            16.0, 0.0, 0.0, 0.0),
                                    child: SizedBox(
                                      width: 350.0,
                                      child: TextFormField(
                                        controller:
                                            _model.passwordTextController,
                                        focusNode: _model.textFieldFocusNode2,
                                        obscureText:
                                            !_model.passwordVisibility1,
                                        decoration: InputDecoration(
                                          labelStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Open Sans',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .typedInpueTextFieldColor,
                                                    fontSize: 16.0,
                                                    fontWeight:
                                                        FontWeight.normal,
                                                  ),
                                          hintText: 'Inserisci la tua password',
                                          enabledBorder: UnderlineInputBorder(
                                            borderSide: const BorderSide(
                                              color: Color(0x00000000),
                                              width: 2.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                          focusedBorder: UnderlineInputBorder(
                                            borderSide: const BorderSide(
                                              color: Color(0x00000000),
                                              width: 2.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                          errorBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .error,
                                              width: 2.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                          focusedErrorBorder:
                                              UnderlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .error,
                                              width: 2.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                          suffixIcon: InkWell(
                                            onTap: () => setState(
                                              () => _model.passwordVisibility1 =
                                                  !_model.passwordVisibility1,
                                            ),
                                            focusNode:
                                                FocusNode(skipTraversal: true),
                                            child: Icon(
                                              _model.passwordVisibility1
                                                  ? Icons.visibility_outlined
                                                  : Icons
                                                      .visibility_off_outlined,
                                              size: 22,
                                            ),
                                          ),
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Open Sans',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .textInputColor,
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
                                Align(
                                  alignment:
                                      const AlignmentDirectional(-1.0, 0.0),
                                  child: Padding(
                                    padding:
                                        const EdgeInsetsDirectional.fromSTEB(
                                            16.0, 18.0, 0.0, 0.0),
                                    child: Text(
                                      'Ripeti la Password',
                                      style: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .override(
                                            fontFamily: 'Istok Web',
                                            color: FlutterFlowTheme.of(context)
                                                .titles,
                                          ),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 48.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .textinputBGColor,
                                    borderRadius: BorderRadius.circular(6.0),
                                    border: Border.all(
                                      color: FlutterFlowTheme.of(context)
                                          .textInputBorderColor,
                                      width: 2.0,
                                    ),
                                  ),
                                  child: Padding(
                                    padding:
                                        const EdgeInsetsDirectional.fromSTEB(
                                            16.0, 0.0, 0.0, 0.0),
                                    child: SizedBox(
                                      width: 350.0,
                                      child: TextFormField(
                                        controller: _model
                                            .confirmPasswordTextController,
                                        focusNode: _model.textFieldFocusNode3,
                                        obscureText:
                                            !_model.passwordVisibility2,
                                        decoration: InputDecoration(
                                          labelStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Open Sans',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .typedInpueTextFieldColor,
                                                    fontSize: 16.0,
                                                    fontWeight:
                                                        FontWeight.normal,
                                                  ),
                                          hintText: 'Ripeti la tua password',
                                          enabledBorder: UnderlineInputBorder(
                                            borderSide: const BorderSide(
                                              color: Color(0x00000000),
                                              width: 2.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                          focusedBorder: UnderlineInputBorder(
                                            borderSide: const BorderSide(
                                              color: Color(0x00000000),
                                              width: 2.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                          errorBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .error,
                                              width: 2.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                          focusedErrorBorder:
                                              UnderlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .error,
                                              width: 2.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                          suffixIcon: InkWell(
                                            onTap: () => setState(
                                              () => _model.passwordVisibility2 =
                                                  !_model.passwordVisibility2,
                                            ),
                                            focusNode:
                                                FocusNode(skipTraversal: true),
                                            child: Icon(
                                              _model.passwordVisibility2
                                                  ? Icons.visibility_outlined
                                                  : Icons
                                                      .visibility_off_outlined,
                                              size: 22,
                                            ),
                                          ),
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Open Sans',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .textInputColor,
                                              fontSize: 16.0,
                                              fontWeight: FontWeight.normal,
                                            ),
                                        validator: _model
                                            .confirmPasswordTextControllerValidator
                                            .asValidator(context),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 40.0, 0.0, 32.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsetsDirectional
                                            .fromSTEB(0.0, 0.0, 12.0, 0.0),
                                        child: Container(
                                          width: 24.0,
                                          height: 24.0,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(5.0),
                                            border: Border.all(
                                              color: const Color(0xFFCDD1E0),
                                              width: 1.0,
                                            ),
                                          ),
                                          child: Theme(
                                            data: ThemeData(
                                              checkboxTheme: CheckboxThemeData(
                                                visualDensity:
                                                    VisualDensity.compact,
                                                materialTapTargetSize:
                                                    MaterialTapTargetSize
                                                        .shrinkWrap,
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          5.0),
                                                ),
                                              ),
                                              unselectedWidgetColor:
                                                  FlutterFlowTheme.of(context)
                                                      .alternate,
                                            ),
                                            child: Checkbox(
                                              value: _model.checkboxValue ??=
                                                  true,
                                              onChanged: (newValue) async {
                                                setState(() => _model
                                                    .checkboxValue = newValue!);
                                              },
                                              activeColor:
                                                  FlutterFlowTheme.of(context)
                                                      .singUpTextButtonColor,
                                              checkColor:
                                                  FlutterFlowTheme.of(context)
                                                      .alternate,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Text(
                                            'Accetto',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Istok Web',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .longtextColor,
                                                ),
                                          ),
                                          InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              logFirebaseEvent(
                                                  'SIGN_UP_PAGE_Text_pvpuu9lv_ON_TAP');
                                              logFirebaseEvent(
                                                  'Text_bottom_sheet');
                                              await showModalBottomSheet(
                                                isScrollControlled: true,
                                                backgroundColor:
                                                    Colors.transparent,
                                                context: context,
                                                builder: (context) {
                                                  return GestureDetector(
                                                    onTap: () => _model
                                                            .unfocusNode
                                                            .canRequestFocus
                                                        ? FocusScope.of(context)
                                                            .requestFocus(_model
                                                                .unfocusNode)
                                                        : FocusScope.of(context)
                                                            .unfocus(),
                                                    child: Padding(
                                                      padding: MediaQuery
                                                          .viewInsetsOf(
                                                              context),
                                                      child: SizedBox(
                                                        height:
                                                            MediaQuery.sizeOf(
                                                                        context)
                                                                    .height *
                                                                0.9,
                                                        child:
                                                            const TermsServiceWidget(),
                                                      ),
                                                    ),
                                                  );
                                                },
                                              ).then((value) =>
                                                  safeSetState(() {}));
                                            },
                                            child: Text(
                                              'termini e condizioni',
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .labelLarge
                                                  .override(
                                                    fontFamily: 'Istok Web',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .clickableTextColor,
                                                    fontWeight: FontWeight.bold,
                                                    decoration: TextDecoration
                                                        .underline,
                                                  ),
                                            ),
                                          ),
                                        ].divide(const SizedBox(width: 3.0)),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 10.0),
                                  child: FFButtonWidget(
                                    onPressed: () async {
                                      logFirebaseEvent(
                                          'SIGN_UP_PAGE_CREA_ACCOUNT_BTN_ON_TAP');
                                      logFirebaseEvent('Button_validate_form');
                                      if (_model.formKey.currentState == null ||
                                          !_model.formKey.currentState!
                                              .validate()) {
                                        return;
                                      }
                                      if (_model.checkboxValue!) {
                                        logFirebaseEvent('Button_auth');
                                        GoRouter.of(context).prepareAuthEvent();
                                        if (_model
                                                .passwordTextController.text !=
                                            _model.confirmPasswordTextController
                                                .text) {
                                          ScaffoldMessenger.of(context)
                                              .showSnackBar(
                                            const SnackBar(
                                              content: Text(
                                                'Le password non coincidono',
                                              ),
                                            ),
                                          );
                                          return;
                                        }

                                        final user = await authManager
                                            .createAccountWithEmail(
                                          context,
                                          _model.emailTextController.text,
                                          _model.passwordTextController.text,
                                        );
                                        if (user == null) {
                                          return;
                                        }

                                        await UsersRecord.collection
                                            .doc(user.uid)
                                            .update(createUsersRecordData(
                                              hadEvaluateApp: false,
                                              howManyOpen: 1,
                                              isCurrentlyintrial: true,
                                              reminderIsSet: false,
                                            ));

                                        logFirebaseEvent('Button_backend_call');

                                        await currentUserReference!
                                            .update(createUsersRecordData(
                                          hadEvaluateApp: false,
                                          howManyOpen: 1,
                                          isCurrentlyintrial: true,
                                          reminderIsSet: false,
                                        ));
                                        logFirebaseEvent('Button_navigate_to');

                                        context.goNamedAuth(
                                            'reminder', context.mounted);

                                        logFirebaseEvent(
                                            'Button_custom_action');
                                        await actions.emailToActiveCampaign(
                                          currentUserEmail,
                                        );
                                      } else {
                                        logFirebaseEvent(
                                            'Button_show_snack_bar');
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(
                                          SnackBar(
                                            content: Text(
                                              'Si prega di accettare i termini di utilizzo prima di continuare',
                                              style: TextStyle(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                              ),
                                            ),
                                            duration: const Duration(
                                                milliseconds: 4000),
                                            backgroundColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondary,
                                          ),
                                        );
                                      }
                                    },
                                    text: 'Crea Account',
                                    options: FFButtonOptions(
                                      width: 350.0,
                                      height: 56.0,
                                      padding: const EdgeInsets.all(0.0),
                                      iconPadding:
                                          const EdgeInsetsDirectional.fromSTEB(
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
                                      elevation: 3.0,
                                      borderRadius: BorderRadius.circular(40.0),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 30.0, 0.0, 30.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Text(
                                            'Già iscritto?',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Istok Web',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .longtextColor,
                                                ),
                                          ),
                                          InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              logFirebaseEvent(
                                                  'SIGN_UP_PAGE_Text_ya3km7lp_ON_TAP');
                                              logFirebaseEvent(
                                                  'Text_navigate_to');

                                              context.pushNamed(
                                                'signIn',
                                                extra: <String, dynamic>{
                                                  kTransitionInfoKey:
                                                      const TransitionInfo(
                                                    hasTransition: true,
                                                    transitionType:
                                                        PageTransitionType.fade,
                                                    duration: Duration(
                                                        milliseconds: 0),
                                                  ),
                                                },
                                              );
                                            },
                                            child: Text(
                                              ' Accedi',
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .labelLarge
                                                  .override(
                                                    fontFamily: 'Istok Web',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .clickableTextColor,
                                                    fontWeight: FontWeight.bold,
                                                    decoration: TextDecoration
                                                        .underline,
                                                  ),
                                            ),
                                          ),
                                        ].divide(const SizedBox(width: 3.0)),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              if (isiOS)
                                isAndroid
                                    ? Container()
                                    : FFButtonWidget(
                                        onPressed: () async {
                                          logFirebaseEvent(
                                              'SIGN_UP_ACCESSO_CON_APPLE_BTN_ON_TAP');
                                          logFirebaseEvent('Button_auth');
                                          GoRouter.of(context)
                                              .prepareAuthEvent();
                                          final user = await authManager
                                              .signInWithApple(context);
                                          if (user == null) {
                                            return;
                                          }
                                          logFirebaseEvent(
                                              'Button_backend_call');

                                          await currentUserReference!
                                              .update(createUsersRecordData(
                                            hadEvaluateApp: false,
                                            howManyOpen: 1,
                                            isCurrentlyintrial: true,
                                            reminderIsSet: false,
                                          ));
                                          logFirebaseEvent(
                                              'Button_navigate_to');

                                          context.goNamedAuth(
                                              'reminder', context.mounted);

                                          logFirebaseEvent(
                                              'Button_custom_action');
                                          await actions.emailToActiveCampaign(
                                            currentUserEmail,
                                          );
                                        },
                                        text: 'Accesso con Apple',
                                        icon: Icon(
                                          Icons.apple,
                                          color: FlutterFlowTheme.of(context)
                                              .buttonTextColor,
                                          size: 24.0,
                                        ),
                                        options: FFButtonOptions(
                                          width: 350.0,
                                          height: 56.0,
                                          padding: const EdgeInsetsDirectional
                                              .fromSTEB(0.0, 0.0, 0.0, 0.0),
                                          iconPadding:
                                              const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                  0.0, 0.0, 15.0, 0.0),
                                          color: FlutterFlowTheme.of(context)
                                              .buttonBackGround,
                                          textStyle: FlutterFlowTheme.of(
                                                  context)
                                              .titleLarge
                                              .override(
                                                fontFamily: 'Istok Web',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .buttonTextColor,
                                                fontWeight: FontWeight.bold,
                                              ),
                                          elevation: 1.0,
                                          borderRadius:
                                              BorderRadius.circular(50.0),
                                        ),
                                      ),
                              // if (!isiOS)
                              FFButtonWidget(
                                onPressed: () async {
                                  logFirebaseEvent(
                                      'SIGN_UP_ACCESSO_CON_GOOGLE_BTN_ON_TAP');
                                  logFirebaseEvent('Button_auth');
                                  GoRouter.of(context).prepareAuthEvent();
                                  final user = await authManager
                                      .signInWithGoogle(context);
                                  if (user == null) {
                                    return;
                                  }
                                  logFirebaseEvent('Button_backend_call');

                                  await currentUserReference!
                                      .update(createUsersRecordData(
                                    hadEvaluateApp: false,
                                    howManyOpen: 1,
                                    isCurrentlyintrial: true,
                                    reminderIsSet: false,
                                  ));
                                  logFirebaseEvent('Button_navigate_to');

                                  context.goNamedAuth(
                                      'reminder', context.mounted);

                                  logFirebaseEvent('Button_custom_action');
                                  await actions.emailToActiveCampaign(
                                    currentUserEmail,
                                  );
                                },
                                text: 'Accesso con Google',
                                icon: FaIcon(
                                  FontAwesomeIcons.google,
                                  color: FlutterFlowTheme.of(context)
                                      .buttonTextColor,
                                  size: 24.0,
                                ),
                                options: FFButtonOptions(
                                  width: 350.0,
                                  height: 56.0,
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  iconPadding:
                                      const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 15.0, 0.0),
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
                              FFButtonWidget(
                                onPressed: () async {
                                  logFirebaseEvent(
                                      'SIGN_UP_ACCESSO_CON_FACEBOOK_BTN_ON_TAP');
                                  logFirebaseEvent('Button_auth');
                                  GoRouter.of(context).prepareAuthEvent();
                                  final user = await authManager
                                      .signInWithFacebook(context);
                                  if (user == null) {
                                    return;
                                  }
                                  logFirebaseEvent('Button_backend_call');

                                  await currentUserReference!
                                      .update(createUsersRecordData(
                                    hadEvaluateApp: false,
                                    howManyOpen: 1,
                                    isCurrentlyintrial: true,
                                    reminderIsSet: false,
                                  ));
                                  logFirebaseEvent('Button_navigate_to');

                                  context.goNamedAuth(
                                      'reminder', context.mounted);

                                  logFirebaseEvent('Button_custom_action');
                                  await actions.emailToActiveCampaign(
                                    currentUserEmail,
                                  );
                                },
                                text: 'Accesso con Facebook',
                                icon: Icon(
                                  Icons.facebook,
                                  color: FlutterFlowTheme.of(context)
                                      .buttonTextColor,
                                  size: 24.0,
                                ),
                                options: FFButtonOptions(
                                  width: 350.0,
                                  height: 56.0,
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  iconPadding:
                                      const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 15.0, 0.0),
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
                            ]
                                .divide(const SizedBox(height: 16.0))
                                .addToEnd(const SizedBox(height: 32.0)),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ));
  }
}
