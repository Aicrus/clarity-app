 
import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/user_side/components/nav_bar/diario_nav_bar/diario_nav_bar_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'agenda_form_model.dart';
export 'agenda_form_model.dart';

class AgendaFormWidget extends StatefulWidget {
  const AgendaFormWidget({super.key});

  @override
  State<AgendaFormWidget> createState() => _AgendaFormWidgetState();
}

class _AgendaFormWidgetState extends State<AgendaFormWidget> {
  late AgendaFormModel _model;
  bool? isPremium;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AgendaFormModel());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'agendaForm'});
    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      logFirebaseEvent('AGENDA_FORM_agendaForm_ON_INIT_STATE');
      logFirebaseEvent('agendaForm_reset_form_fields');
      setState(() {
        _model.textController1?.clear();
        _model.textController2?.clear();
        _model.textController3?.clear();
      });
    });

    _model.textController1 ??= TextEditingController();
    _model.textFieldFocusNode1 ??= FocusNode();

    _model.textController2 ??= TextEditingController();
    _model.textFieldFocusNode2 ??= FocusNode();

    _model.textController3 ??= TextEditingController();
    _model.textFieldFocusNode3 ??= FocusNode();

    _model.isPremium = currentUserDocument?.isPremium ?? false;
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
        title: 'agendaForm',
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
                  child: Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(
                        20.0, 0.0, 20.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            logFirebaseEvent(
                                'AGENDA_FORM_Container_q7dv9s8w_ON_TAP');
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
                                    'AGENDA_FORM_PAGE_Image_5owe04yt_ON_TAP');
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
                  SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Align(
                          alignment: const AlignmentDirectional(0.0, -1.0),
                          child: Padding(
                            padding: const EdgeInsets.all(24.0),
                            child: Text(
                              'Oggi sono grato per:',
                              style: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .override(
                                    fontFamily: 'Istok Web',
                                    color: FlutterFlowTheme.of(context).titles,
                                    fontSize: 28.0,
                                  ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: const AlignmentDirectional(0.0, 0.0),
                          child: Container(
                            width: 350.0,
                            decoration: const BoxDecoration(),
                            child: Form(
                              key: _model.formKey,
                              autovalidateMode: AutovalidateMode.disabled,
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Container(
                                    width: 350.0,
                                    height: 140.0,
                                    decoration: const BoxDecoration(),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Align(
                                          alignment: const AlignmentDirectional(
                                              -1.0, 0.0),
                                          child: Padding(
                                            padding: const EdgeInsetsDirectional
                                                .fromSTEB(16.0, 0.0, 0.0, 0.0),
                                            child: Text(
                                              'Gratitudine 1',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .titleSmall
                                                      .override(
                                                        fontFamily: 'Istok Web',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .titles,
                                                      ),
                                            ),
                                          ),
                                        ),
                                        Flexible(
                                          child: Padding(
                                            padding: const EdgeInsetsDirectional
                                                .fromSTEB(0.0, 0.0, 0.0, 2.0),
                                            child: Container(
                                              width: 350.0,
                                              height: 112.0,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .textinputBGColor,
                                                borderRadius:
                                                    BorderRadius.circular(6.0),
                                                border: Border.all(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .textInputBorderColor,
                                                  width: 2.0,
                                                ),
                                              ),
                                              child: Padding(
                                                padding:
                                                    const EdgeInsetsDirectional
                                                        .fromSTEB(
                                                        22.0, 0.0, 8.0, 0.0),
                                                child: TextFormField(
                                                  onChanged: (value) {
                                                    if (!_model.isPremium!) {
                                                      logFirebaseEvent(
                                                          'Button_navigate_to');
                                                      _model.textController1!
                                                          .clear();
                                                      _model
                                                          .textFieldFocusNode1!
                                                          .unfocus();
                                                      context.pushNamed(
                                                        'premium',
                                                        extra: <String,
                                                            dynamic>{
                                                          kTransitionInfoKey:
                                                              const TransitionInfo(
                                                            hasTransition: true,
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
                                                  controller:
                                                      _model.textController1,
                                                  focusNode: _model
                                                      .textFieldFocusNode1,
                                                  obscureText: false,
                                                  decoration: InputDecoration(
                                                    labelStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .labelMedium
                                                            .override(
                                                              fontFamily:
                                                                  'Istok Web',
                                                              color: const Color(
                                                                  0x80CBE3F2),
                                                            ),
                                                    hintText:
                                                        'Sono grato per...',
                                                    enabledBorder:
                                                        UnderlineInputBorder(
                                                      borderSide:
                                                          const BorderSide(
                                                        color:
                                                            Color(0x00000000),
                                                        width: 4.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              6.0),
                                                    ),
                                                    focusedBorder:
                                                        UnderlineInputBorder(
                                                      borderSide:
                                                          const BorderSide(
                                                        color:
                                                            Color(0x00000000),
                                                        width: 4.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              6.0),
                                                    ),
                                                    errorBorder:
                                                        UnderlineInputBorder(
                                                      borderSide:
                                                          const BorderSide(
                                                        color:
                                                            Color(0x00000000),
                                                        width: 4.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              6.0),
                                                    ),
                                                    focusedErrorBorder:
                                                        UnderlineInputBorder(
                                                      borderSide:
                                                          const BorderSide(
                                                        color:
                                                            Color(0x00000000),
                                                        width: 4.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              6.0),
                                                    ),
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Istok Web',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .textInputColor,
                                                      ),
                                                  maxLines: null,
                                                  validator: _model
                                                      .textController1Validator
                                                      .asValidator(context),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    width: 350.0,
                                    height: 140.0,
                                    decoration: const BoxDecoration(),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Align(
                                          alignment: const AlignmentDirectional(
                                              -1.0, 0.0),
                                          child: Padding(
                                            padding: const EdgeInsetsDirectional
                                                .fromSTEB(16.0, 0.0, 0.0, 0.0),
                                            child: Text(
                                              'Gratitudine 2',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .titleSmall
                                                      .override(
                                                        fontFamily: 'Istok Web',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .titles,
                                                      ),
                                            ),
                                          ),
                                        ),
                                        Flexible(
                                          child: Padding(
                                            padding: const EdgeInsetsDirectional
                                                .fromSTEB(0.0, 0.0, 0.0, 2.0),
                                            child: Container(
                                              width: 350.0,
                                              height: 112.0,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .textinputBGColor,
                                                borderRadius:
                                                    BorderRadius.circular(6.0),
                                                border: Border.all(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .textInputBorderColor,
                                                  width: 2.0,
                                                ),
                                              ),
                                              child: Padding(
                                                padding:
                                                    const EdgeInsetsDirectional
                                                        .fromSTEB(
                                                        22.0, 0.0, 8.0, 0.0),
                                                child: TextFormField(
                                                  onChanged: (value) {
                                                    if (!_model.isPremium!) {
                                                      logFirebaseEvent(
                                                          'Button_navigate_to');
                                                      _model.textController2!
                                                          .clear();
                                                      _model
                                                          .textFieldFocusNode2!
                                                          .unfocus();
                                                      context.pushNamed(
                                                        'premium',
                                                        extra: <String,
                                                            dynamic>{
                                                          kTransitionInfoKey:
                                                              const TransitionInfo(
                                                            hasTransition: true,
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
                                                  controller:
                                                      _model.textController2,
                                                  focusNode: _model
                                                      .textFieldFocusNode2,
                                                  obscureText: false,
                                                  decoration: InputDecoration(
                                                    labelStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .labelMedium
                                                            .override(
                                                              fontFamily:
                                                                  'Istok Web',
                                                              color: const Color(
                                                                  0x80CBE3F2),
                                                            ),
                                                    hintText:
                                                        'Sono grato per...',
                                                    enabledBorder:
                                                        UnderlineInputBorder(
                                                      borderSide:
                                                          const BorderSide(
                                                        color:
                                                            Color(0x00000000),
                                                        width: 4.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              6.0),
                                                    ),
                                                    focusedBorder:
                                                        UnderlineInputBorder(
                                                      borderSide:
                                                          const BorderSide(
                                                        color:
                                                            Color(0x00000000),
                                                        width: 4.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              6.0),
                                                    ),
                                                    errorBorder:
                                                        UnderlineInputBorder(
                                                      borderSide:
                                                          const BorderSide(
                                                        color:
                                                            Color(0x00000000),
                                                        width: 4.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              6.0),
                                                    ),
                                                    focusedErrorBorder:
                                                        UnderlineInputBorder(
                                                      borderSide:
                                                          const BorderSide(
                                                        color:
                                                            Color(0x00000000),
                                                        width: 4.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              6.0),
                                                    ),
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Istok Web',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .textInputColor,
                                                      ),
                                                  maxLines: null,
                                                  validator: _model
                                                      .textController2Validator
                                                      .asValidator(context),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    width: 350.0,
                                    height: 140.0,
                                    decoration: const BoxDecoration(),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Align(
                                          alignment: const AlignmentDirectional(
                                              -1.0, 0.0),
                                          child: Padding(
                                            padding: const EdgeInsetsDirectional
                                                .fromSTEB(16.0, 0.0, 0.0, 0.0),
                                            child: Text(
                                              'Gratitudine 3',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .titleSmall
                                                      .override(
                                                        fontFamily: 'Istok Web',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .titles,
                                                      ),
                                            ),
                                          ),
                                        ),
                                        Flexible(
                                          child: Container(
                                            width: 350.0,
                                            height: 112.0,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .textinputBGColor,
                                              borderRadius:
                                                  BorderRadius.circular(6.0),
                                              border: Border.all(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .textInputBorderColor,
                                                width: 2.0,
                                              ),
                                            ),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                      22.0, 0.0, 8.0, 0.0),
                                              child: TextFormField(
                                                onChanged: (value) {
                                                  if (!_model.isPremium!) {
                                                    logFirebaseEvent(
                                                        'Button_navigate_to');
                                                    _model.textController3!
                                                        .clear();
                                                    _model.textFieldFocusNode3!
                                                        .unfocus();
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
                                                  }
                                                },
                                                controller:
                                                    _model.textController3,
                                                focusNode:
                                                    _model.textFieldFocusNode3,
                                                obscureText: false,
                                                decoration: InputDecoration(
                                                  labelStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .labelMedium
                                                      .override(
                                                        fontFamily: 'Istok Web',
                                                        color: const Color(
                                                            0x80CBE3F2),
                                                      ),
                                                  hintText: 'Sono grato per...',
                                                  enabledBorder:
                                                      UnderlineInputBorder(
                                                    borderSide:
                                                        const BorderSide(
                                                      color: Color(0x00000000),
                                                      width: 4.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            6.0),
                                                  ),
                                                  focusedBorder:
                                                      UnderlineInputBorder(
                                                    borderSide:
                                                        const BorderSide(
                                                      color: Color(0x00000000),
                                                      width: 4.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            6.0),
                                                  ),
                                                  errorBorder:
                                                      UnderlineInputBorder(
                                                    borderSide:
                                                        const BorderSide(
                                                      color: Color(0x00000000),
                                                      width: 4.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            6.0),
                                                  ),
                                                  focusedErrorBorder:
                                                      UnderlineInputBorder(
                                                    borderSide:
                                                        const BorderSide(
                                                      color: Color(0x00000000),
                                                      width: 4.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            6.0),
                                                  ),
                                                ),
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyMedium
                                                    .override(
                                                      fontFamily: 'Istok Web',
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .textInputColor,
                                                    ),
                                                maxLines: null,
                                                validator: _model
                                                    .textController3Validator
                                                    .asValidator(context),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ]
                                    .divide(const SizedBox(height: 32.0))
                                    .addToEnd(const SizedBox(height: 32.0)),
                              ),
                            ),
                          ),
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            FFButtonWidget(
                              onPressed: () async {
                                logFirebaseEvent(
                                    'AGENDA_FORM_SONO_GRATO_PER_QUESTO_BTN_ON');
                                if (!valueOrDefault<bool>(
                                    currentUserDocument?.isPremium, false)) {
                                  logFirebaseEvent('Button_navigate_to');

                                  context.pushNamed(
                                    'premium',
                                    extra: <String, dynamic>{
                                      kTransitionInfoKey: const TransitionInfo(
                                        hasTransition: true,
                                        transitionType: PageTransitionType.fade,
                                        duration: Duration(milliseconds: 0),
                                      ),
                                    },
                                  );
                                } else {
                                  logFirebaseEvent('Button_backend_call');

                                  await DiarioRecord.createDoc(
                                          currentUserReference!)
                                      .set({
                                    ...createDiarioRecordData(
                                      firstText: _model.textController1.text,
                                      secondText: _model.textController2.text,
                                      thirdText: _model.textController3.text,
                                    ),
                                    ...mapToFirestore(
                                      {
                                        'created_at':
                                            FieldValue.serverTimestamp(),
                                      },
                                    ),
                                  });
                                  logFirebaseEvent('Button_navigate_to');

                                  context.pushNamed(
                                    'agendaList',
                                    extra: <String, dynamic>{
                                      kTransitionInfoKey: const TransitionInfo(
                                        hasTransition: true,
                                        transitionType: PageTransitionType.fade,
                                        duration: Duration(milliseconds: 0),
                                      ),
                                    },
                                  );
                                }
                              },
                              text: 'Sono grato per questo',
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
                                      fontSize: 22.0,
                                    ),
                                borderRadius: BorderRadius.circular(40.0),
                              ),
                              showLoadingIndicator: false,
                            ),
                            FFButtonWidget(
                              onPressed: () async {
                                logFirebaseEvent(
                                    'AGENDA_FORM_VAI_A_LISTA_GRATITUDINI_BTN_');
                                if (valueOrDefault<bool>(
                                    currentUserDocument?.isPremium, false)) {
                                  logFirebaseEvent('Button_navigate_to');

                                  context.pushNamed(
                                    'agendaList',
                                    extra: <String, dynamic>{
                                      kTransitionInfoKey: const TransitionInfo(
                                        hasTransition: true,
                                        transitionType: PageTransitionType.fade,
                                        duration: Duration(milliseconds: 0),
                                      ),
                                    },
                                  );
                                } else {
                                  logFirebaseEvent('Button_navigate_to');

                                  context.pushNamed(
                                    'premium',
                                    extra: <String, dynamic>{
                                      kTransitionInfoKey: const TransitionInfo(
                                        hasTransition: true,
                                        transitionType: PageTransitionType.fade,
                                        duration: Duration(milliseconds: 0),
                                      ),
                                    },
                                  );
                                }
                              },
                              text: 'Vai a lista gratitudini',
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
                                      fontSize: 22.0,
                                    ),
                                borderRadius: BorderRadius.circular(40.0),
                              ),
                            ),
                            Container(
                              width: double.infinity,
                              height: 100.0,
                              decoration: const BoxDecoration(),
                            ),
                          ]
                              .divide(const SizedBox(height: 16.0))
                              .addToEnd(const SizedBox(height: 24.0)),
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: const AlignmentDirectional(0.0, 1.0),
                    child: wrapWithModel(
                      model: _model.diarioNavBarModel,
                      updateCallback: () => setState(() {}),
                      child: const DiarioNavBarWidget(),
                    ),
                  ),
                  if (_model.showPremiumPage)
                    Align(
                      alignment: const AlignmentDirectional(0.0, -1.0),
                      child: AuthUserStreamWidget(
                        builder: (context) => InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            logFirebaseEvent(
                                'AGENDA_FORM_Container_ko7f12bi_ON_TAP');
                            logFirebaseEvent('Container_navigate_to');

                            context.pushNamed(
                              'premium',
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
                            width: double.infinity,
                            height: MediaQuery.sizeOf(context).height * 0.79,
                            decoration: const BoxDecoration(
                              color: Color(0x0ADFF3FF),
                            ),
                          ),
                        ),
                      ),
                    ),
                ],
              ),
            ),
          ),
        ));
  }
}
