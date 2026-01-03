import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'admin_content_add_form_model.dart';
export 'admin_content_add_form_model.dart';

class AdminContentAddFormWidget extends StatefulWidget {
  const AdminContentAddFormWidget({super.key});

  @override
  State<AdminContentAddFormWidget> createState() =>
      _AdminContentAddFormWidgetState();
}

class _AdminContentAddFormWidgetState extends State<AdminContentAddFormWidget> {
  late AdminContentAddFormModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AdminContentAddFormModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'AdminContentAddForm'});
    _model.textController1 ??= TextEditingController();
    _model.textFieldFocusNode1 ??= FocusNode();

    _model.textController2 ??= TextEditingController();
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
        title: 'AdminContentAddForm',
        color: FlutterFlowTheme.of(context).primary.withAlpha(0XFF),
        child: GestureDetector(
          onTap: () => _model.unfocusNode.canRequestFocus
              ? FocusScope.of(context).requestFocus(_model.unfocusNode)
              : FocusScope.of(context).unfocus(),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            appBar: AppBar(
              backgroundColor: FlutterFlowTheme.of(context).primary,
              automaticallyImplyLeading: false,
              title: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Align(
                    alignment: const AlignmentDirectional(0.0, 0.0),
                    child: InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        logFirebaseEvent(
                            'ADMIN_CONTENT_ADD_FORM_spacer_ON_TAP');
                        logFirebaseEvent('spacer_navigate_back');
                        context.safePop();
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
                            logFirebaseEvent(
                                'ADMIN_CONTENT_ADD_FORM_Icon_rt1brhr3_ON_');
                            logFirebaseEvent('Icon_navigate_back');
                            context.safePop();
                          },
                          child: Icon(
                            Icons.arrow_back,
                            color: FlutterFlowTheme.of(context).appBarIconColor,
                            size: 24.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
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
                    Align(
                      alignment: const AlignmentDirectional(0.0, -1.0),
                      child: Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 0.0),
                        child: Text(
                          'Aggiungere un \nBlocco Tematico',
                          textAlign: TextAlign.center,
                          style:
                              FlutterFlowTheme.of(context).titleSmall.override(
                                    fontFamily: 'Istok Web',
                                    color: FlutterFlowTheme.of(context).titles,
                                    fontSize: 28.0,
                                  ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: const AlignmentDirectional(0.0, 0.0),
                      child: Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
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
                                  decoration: const BoxDecoration(),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Align(
                                        alignment:
                                            const AlignmentDirectional(0.0, 0.0),
                                        child: FlutterFlowDropDown<String>(
                                          controller: _model
                                                  .dropDownValueController ??=
                                              FormFieldController<String>(null),
                                          options: const [
                                            'Meditazione',
                                            'Potenziamenti',
                                            'Sonno'
                                          ],
                                          onChanged: (val) => setState(
                                              () => _model.dropDownValue = val),
                                          width: 350.0,
                                          height: 50.0,
                                          textStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium,
                                          hintText: 'Selezionare la categoria',
                                          icon: Icon(
                                            Icons.keyboard_arrow_down_rounded,
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                            size: 24.0,
                                          ),
                                          elevation: 2.0,
                                          borderColor:
                                              FlutterFlowTheme.of(context)
                                                  .textInputBorderColor,
                                          borderWidth: 2.0,
                                          borderRadius: 8.0,
                                          margin:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  16.0, 4.0, 16.0, 4.0),
                                          hidesUnderline: true,
                                          isSearchable: false,
                                          isMultiSelect: false,
                                        ),
                                      ),
                                      Align(
                                        alignment:
                                            const AlignmentDirectional(-1.0, 0.0),
                                        child: Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  16.0, 0.0, 0.0, 0.0),
                                          child: Text(
                                            'Titolo del blocco tematico:',
                                            style: FlutterFlowTheme.of(context)
                                                .titleSmall
                                                .override(
                                                  fontFamily: 'Istok Web',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .titles,
                                                ),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        width: 350.0,
                                        height: 64.0,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .textinputBGColor,
                                          borderRadius:
                                              BorderRadius.circular(6.0),
                                          border: Border.all(
                                            color: FlutterFlowTheme.of(context)
                                                .textInputBorderColor,
                                            width: 2.0,
                                          ),
                                        ),
                                        child: Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  24.0, 0.0, 8.0, 0.0),
                                          child: TextFormField(
                                            controller: _model.textController1,
                                            focusNode:
                                                _model.textFieldFocusNode1,
                                            obscureText: false,
                                            decoration: InputDecoration(
                                              labelText: 'inserisci il titolo',
                                              labelStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMedium
                                                      .override(
                                                        fontFamily: 'Istok Web',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .textInputColor,
                                                      ),
                                              enabledBorder:
                                                  UnderlineInputBorder(
                                                borderSide: const BorderSide(
                                                  color: Color(0x00000000),
                                                  width: 4.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(6.0),
                                              ),
                                              focusedBorder:
                                                  UnderlineInputBorder(
                                                borderSide: const BorderSide(
                                                  color: Color(0x00000000),
                                                  width: 4.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(6.0),
                                              ),
                                              errorBorder: UnderlineInputBorder(
                                                borderSide: const BorderSide(
                                                  color: Color(0x00000000),
                                                  width: 4.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(6.0),
                                              ),
                                              focusedErrorBorder:
                                                  UnderlineInputBorder(
                                                borderSide: const BorderSide(
                                                  color: Color(0x00000000),
                                                  width: 4.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(6.0),
                                              ),
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Istok Web',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .textInputColor,
                                                ),
                                            validator: _model
                                                .textController1Validator
                                                .asValidator(context),
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment:
                                            const AlignmentDirectional(-1.0, 0.0),
                                        child: Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  16.0, 0.0, 0.0, 0.0),
                                          child: Text(
                                            'Index :',
                                            style: FlutterFlowTheme.of(context)
                                                .titleSmall
                                                .override(
                                                  fontFamily: 'Istok Web',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .titles,
                                                ),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        width: 350.0,
                                        height: 64.0,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .textinputBGColor,
                                          borderRadius:
                                              BorderRadius.circular(6.0),
                                          border: Border.all(
                                            color: FlutterFlowTheme.of(context)
                                                .textInputBorderColor,
                                            width: 2.0,
                                          ),
                                        ),
                                        child: Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  24.0, 0.0, 8.0, 0.0),
                                          child: TextFormField(
                                            controller: _model.textController2,
                                            focusNode:
                                                _model.textFieldFocusNode2,
                                            obscureText: false,
                                            decoration: InputDecoration(
                                              labelText:
                                                  'inserisci un numero per l\'ordine di visualizzazione',
                                              labelStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMedium
                                                      .override(
                                                        fontFamily: 'Istok Web',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .textInputColor,
                                                      ),
                                              enabledBorder:
                                                  UnderlineInputBorder(
                                                borderSide: const BorderSide(
                                                  color: Color(0x00000000),
                                                  width: 4.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(6.0),
                                              ),
                                              focusedBorder:
                                                  UnderlineInputBorder(
                                                borderSide: const BorderSide(
                                                  color: Color(0x00000000),
                                                  width: 4.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(6.0),
                                              ),
                                              errorBorder: UnderlineInputBorder(
                                                borderSide: const BorderSide(
                                                  color: Color(0x00000000),
                                                  width: 4.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(6.0),
                                              ),
                                              focusedErrorBorder:
                                                  UnderlineInputBorder(
                                                borderSide: const BorderSide(
                                                  color: Color(0x00000000),
                                                  width: 4.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(6.0),
                                              ),
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Istok Web',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .textInputColor,
                                                ),
                                            validator: _model
                                                .textController2Validator
                                                .asValidator(context),
                                          ),
                                        ),
                                      ),
                                    ].divide(const SizedBox(height: 12.0)),
                                  ),
                                ),
                              ].divide(const SizedBox(height: 15.0)),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        if (_model.dropDownValue == 'Meditazione')
                          FFButtonWidget(
                            onPressed: () async {
                              logFirebaseEvent(
                                  'ADMIN_CONTENT_ADD_FORM_REGISTRARE_IL_CAP');
                              logFirebaseEvent('Button_backend_call');

                              var lessonsRecordReference =
                                  LessonsRecord.collection.doc();
                              await lessonsRecordReference.set({
                                ...createLessonsRecordData(
                                  title: _model.textController1.text,
                                  userRef: currentUserReference,
                                  category: 'Meditazione',
                                  index: _model.textController2.text,
                                ),
                                ...mapToFirestore(
                                  {
                                    'created_at': FieldValue.serverTimestamp(),
                                  },
                                ),
                              });
                              _model.newCatMedita =
                                  LessonsRecord.getDocumentFromData({
                                ...createLessonsRecordData(
                                  title: _model.textController1.text,
                                  userRef: currentUserReference,
                                  category: 'Meditazione',
                                  index: _model.textController2.text,
                                ),
                                ...mapToFirestore(
                                  {
                                    'created_at': DateTime.now(),
                                  },
                                ),
                              }, lessonsRecordReference);
                              logFirebaseEvent('Button_navigate_to');

                              context.pushNamed('DashBoardMeditazioni');

                              setState(() {});
                            },
                            text:
                                'Aggiungere alla tematica: ${_model.dropDownValue}',
                            options: FFButtonOptions(
                              width: 350.0,
                              height: 56.0,
                              padding: const EdgeInsets.all(0.0),
                              iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color:
                                  FlutterFlowTheme.of(context).buttonBackGround,
                              textStyle: FlutterFlowTheme.of(context)
                                  .headlineMedium
                                  .override(
                                    fontFamily: 'Istok Web',
                                    color: FlutterFlowTheme.of(context)
                                        .buttonTextColor,
                                    fontSize: 18.0,
                                  ),
                              elevation: 3.0,
                              borderSide: const BorderSide(
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(40.0),
                            ),
                          ),
                        if (_model.dropDownValue == 'Potenziamenti')
                          FFButtonWidget(
                            onPressed: () async {
                              logFirebaseEvent(
                                  'ADMIN_CONTENT_ADD_FORM_REGISTRARE_IL_CAP');
                              logFirebaseEvent('Button_backend_call');

                              var lessonsRecordReference =
                                  LessonsRecord.collection.doc();
                              await lessonsRecordReference.set({
                                ...createLessonsRecordData(
                                  title: _model.textController1.text,
                                  userRef: currentUserReference,
                                  category: 'Potenziamenti',
                                  index: _model.textController2.text,
                                ),
                                ...mapToFirestore(
                                  {
                                    'created_at': FieldValue.serverTimestamp(),
                                  },
                                ),
                              });
                              _model.newCatPotenzia =
                                  LessonsRecord.getDocumentFromData({
                                ...createLessonsRecordData(
                                  title: _model.textController1.text,
                                  userRef: currentUserReference,
                                  category: 'Potenziamenti',
                                  index: _model.textController2.text,
                                ),
                                ...mapToFirestore(
                                  {
                                    'created_at': DateTime.now(),
                                  },
                                ),
                              }, lessonsRecordReference);
                              logFirebaseEvent('Button_navigate_to');

                              context.pushNamed(
                                'DashBoardPotenziamenti',
                                extra: <String, dynamic>{
                                  kTransitionInfoKey: const TransitionInfo(
                                    hasTransition: true,
                                    transitionType: PageTransitionType.fade,
                                    duration: Duration(milliseconds: 0),
                                  ),
                                },
                              );

                              setState(() {});
                            },
                            text:
                                'Aggiungere alla tematica: ${_model.dropDownValue}',
                            options: FFButtonOptions(
                              width: 350.0,
                              height: 56.0,
                              padding: const EdgeInsets.all(0.0),
                              iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color:
                                  FlutterFlowTheme.of(context).buttonBackGround,
                              textStyle: FlutterFlowTheme.of(context)
                                  .headlineMedium
                                  .override(
                                    fontFamily: 'Istok Web',
                                    color: FlutterFlowTheme.of(context)
                                        .buttonTextColor,
                                    fontSize: 18.0,
                                  ),
                              elevation: 3.0,
                              borderSide: const BorderSide(
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(40.0),
                            ),
                          ),
                        if (_model.dropDownValue == 'Sonno')
                          FFButtonWidget(
                            onPressed: () async {
                              logFirebaseEvent(
                                  'ADMIN_CONTENT_ADD_FORM_REGISTRARE_IL_CAP');
                              logFirebaseEvent('Button_backend_call');

                              var lessonsRecordReference =
                                  LessonsRecord.collection.doc();
                              await lessonsRecordReference.set({
                                ...createLessonsRecordData(
                                  title: _model.textController1.text,
                                  userRef: currentUserReference,
                                  category: 'Sonno',
                                  index: _model.textController2.text,
                                ),
                                ...mapToFirestore(
                                  {
                                    'created_at': FieldValue.serverTimestamp(),
                                  },
                                ),
                              });
                              _model.newCatSonno =
                                  LessonsRecord.getDocumentFromData({
                                ...createLessonsRecordData(
                                  title: _model.textController1.text,
                                  userRef: currentUserReference,
                                  category: 'Sonno',
                                  index: _model.textController2.text,
                                ),
                                ...mapToFirestore(
                                  {
                                    'created_at': DateTime.now(),
                                  },
                                ),
                              }, lessonsRecordReference);
                              logFirebaseEvent('Button_navigate_to');

                              context.pushNamed('DashBoardSonno');

                              setState(() {});
                            },
                            text:
                                'Aggiungere alla tematica: ${_model.dropDownValue}',
                            options: FFButtonOptions(
                              width: 350.0,
                              height: 56.0,
                              padding: const EdgeInsets.all(0.0),
                              iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color:
                                  FlutterFlowTheme.of(context).buttonBackGround,
                              textStyle: FlutterFlowTheme.of(context)
                                  .headlineMedium
                                  .override(
                                    fontFamily: 'Istok Web',
                                    color: FlutterFlowTheme.of(context)
                                        .buttonTextColor,
                                    fontSize: 18.0,
                                  ),
                              elevation: 3.0,
                              borderSide: const BorderSide(
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(40.0),
                            ),
                          ),
                        Container(
                          width: double.infinity,
                          height: 100.0,
                          decoration: const BoxDecoration(),
                        ),
                      ].divide(const SizedBox(height: 16.0)),
                    ),
                  ].divide(const SizedBox(height: 15.0)),
                ),
              ),
            ),
          ),
        ));
  }
}
