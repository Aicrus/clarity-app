import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'medita_lesson_creator_model.dart';
export 'medita_lesson_creator_model.dart';

class MeditaLessonCreatorWidget extends StatefulWidget {
  const MeditaLessonCreatorWidget({
    super.key,
    required this.bloccoTemNewMed,
  });

  final DocumentReference? bloccoTemNewMed;

  @override
  State<MeditaLessonCreatorWidget> createState() =>
      _MeditaLessonCreatorWidgetState();
}

class _MeditaLessonCreatorWidgetState extends State<MeditaLessonCreatorWidget> {
  late MeditaLessonCreatorModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MeditaLessonCreatorModel());

    _model.textController1 ??= TextEditingController();
    _model.textFieldFocusNode1 ??= FocusNode();

    _model.textController2 ??= TextEditingController();
    _model.textFieldFocusNode2 ??= FocusNode();

    _model.textController3 ??= TextEditingController();
    _model.textFieldFocusNode3 ??= FocusNode();

    _model.textController4 ??= TextEditingController();
    _model.textFieldFocusNode4 ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.sizeOf(context).height * 1.0,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xCDECF7FF), Color(0xCDACCDE5)],
          stops: [0.5, 1.0],
          begin: AlignmentDirectional(0.0, -1.0),
          end: AlignmentDirectional(0, 1.0),
        ),
      ),
      child: SingleChildScrollView(
        primary: false,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Align(
              alignment: const AlignmentDirectional(0.0, -1.0),
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(10.0, 24.0, 10.0, 0.0),
                child: Text(
                  'Aggiungere una nuova lezione al Blocco Tematico Meditazioni',
                  textAlign: TextAlign.center,
                  style: FlutterFlowTheme.of(context).titleSmall.override(
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
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
                child: Container(
                  width: 350.0,
                  decoration: const BoxDecoration(),
                  child: Form(
                    key: _model.formKey,
                    autovalidateMode: AutovalidateMode.disabled,
                    child: SingleChildScrollView(
                      primary: false,
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Container(
                            width: 350.0,
                            decoration: const BoxDecoration(),
                            child: SingleChildScrollView(
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Align(
                                    alignment: const AlignmentDirectional(-1.0, 0.0),
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          16.0, 0.0, 0.0, 0.0),
                                      child: Text(
                                        'Titolo della lezione:',
                                        style: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .override(
                                              fontFamily: 'Istok Web',
                                              color:
                                                  FlutterFlowTheme.of(context)
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
                                      borderRadius: BorderRadius.circular(6.0),
                                      border: Border.all(
                                        color: FlutterFlowTheme.of(context)
                                            .textInputBorderColor,
                                        width: 2.0,
                                      ),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          24.0, 0.0, 8.0, 0.0),
                                      child: TextFormField(
                                        controller: _model.textController1,
                                        focusNode: _model.textFieldFocusNode1,
                                        obscureText: false,
                                        decoration: InputDecoration(
                                          labelText: 'inserisci il titolo',
                                          labelStyle: FlutterFlowTheme.of(
                                                  context)
                                              .labelMedium
                                              .override(
                                                fontFamily: 'Istok Web',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .textInputColor,
                                              ),
                                          enabledBorder: UnderlineInputBorder(
                                            borderSide: const BorderSide(
                                              color: Color(0x00000000),
                                              width: 4.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(6.0),
                                          ),
                                          focusedBorder: UnderlineInputBorder(
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
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .textInputColor,
                                            ),
                                        validator: _model
                                            .textController1Validator
                                            .asValidator(context),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: const AlignmentDirectional(-1.0, 0.0),
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          16.0, 0.0, 0.0, 0.0),
                                      child: Text(
                                        'Sottotitolo capitolo:',
                                        style: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .override(
                                              fontFamily: 'Istok Web',
                                              color:
                                                  FlutterFlowTheme.of(context)
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
                                      borderRadius: BorderRadius.circular(6.0),
                                      border: Border.all(
                                        color: FlutterFlowTheme.of(context)
                                            .textInputBorderColor,
                                        width: 2.0,
                                      ),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          24.0, 0.0, 8.0, 0.0),
                                      child: TextFormField(
                                        controller: _model.textController2,
                                        focusNode: _model.textFieldFocusNode2,
                                        obscureText: false,
                                        decoration: InputDecoration(
                                          labelText: 'inserisci il sottotitolo',
                                          labelStyle: FlutterFlowTheme.of(
                                                  context)
                                              .labelMedium
                                              .override(
                                                fontFamily: 'Istok Web',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .textInputColor,
                                              ),
                                          enabledBorder: UnderlineInputBorder(
                                            borderSide: const BorderSide(
                                              color: Color(0x00000000),
                                              width: 4.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(6.0),
                                          ),
                                          focusedBorder: UnderlineInputBorder(
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
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .textInputColor,
                                            ),
                                        validator: _model
                                            .textController2Validator
                                            .asValidator(context),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: const AlignmentDirectional(-1.0, 0.0),
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          16.0, 0.0, 0.0, 0.0),
                                      child: Text(
                                        'Durata:',
                                        style: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .override(
                                              fontFamily: 'Istok Web',
                                              color:
                                                  FlutterFlowTheme.of(context)
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
                                      borderRadius: BorderRadius.circular(6.0),
                                      border: Border.all(
                                        color: FlutterFlowTheme.of(context)
                                            .textInputBorderColor,
                                        width: 2.0,
                                      ),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          24.0, 0.0, 8.0, 0.0),
                                      child: TextFormField(
                                        controller: _model.textController3,
                                        focusNode: _model.textFieldFocusNode3,
                                        obscureText: false,
                                        decoration: InputDecoration(
                                          labelText: 'inserisci la durata',
                                          labelStyle: FlutterFlowTheme.of(
                                                  context)
                                              .labelMedium
                                              .override(
                                                fontFamily: 'Istok Web',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .textInputColor,
                                              ),
                                          enabledBorder: UnderlineInputBorder(
                                            borderSide: const BorderSide(
                                              color: Color(0x00000000),
                                              width: 4.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(6.0),
                                          ),
                                          focusedBorder: UnderlineInputBorder(
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
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .textInputColor,
                                            ),
                                        validator: _model
                                            .textController3Validator
                                            .asValidator(context),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: const AlignmentDirectional(-1.0, 0.0),
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          16.0, 0.0, 0.0, 0.0),
                                      child: Text(
                                        'Ordine:',
                                        style: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .override(
                                              fontFamily: 'Istok Web',
                                              color:
                                                  FlutterFlowTheme.of(context)
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
                                      borderRadius: BorderRadius.circular(6.0),
                                      border: Border.all(
                                        color: FlutterFlowTheme.of(context)
                                            .textInputBorderColor,
                                        width: 2.0,
                                      ),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          24.0, 0.0, 8.0, 0.0),
                                      child: TextFormField(
                                        controller: _model.textController4,
                                        focusNode: _model.textFieldFocusNode4,
                                        obscureText: false,
                                        decoration: InputDecoration(
                                          labelText:
                                              'Inserisci il numero per definire l\'ordine',
                                          labelStyle: FlutterFlowTheme.of(
                                                  context)
                                              .labelMedium
                                              .override(
                                                fontFamily: 'Istok Web',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .textInputColor,
                                              ),
                                          enabledBorder: UnderlineInputBorder(
                                            borderSide: const BorderSide(
                                              color: Color(0x00000000),
                                              width: 4.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(6.0),
                                          ),
                                          focusedBorder: UnderlineInputBorder(
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
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .textInputColor,
                                            ),
                                        validator: _model
                                            .textController4Validator
                                            .asValidator(context),
                                      ),
                                    ),
                                  ),
                                ].divide(const SizedBox(height: 12.0)),
                              ),
                            ),
                          ),
                        ].divide(const SizedBox(height: 15.0)),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            FFButtonWidget(
              onPressed: () async {
                logFirebaseEvent('MEDITA_LESSON_CREATOR_CREA_LA_LEZIONE_BT');
                logFirebaseEvent('Button_backend_call');

                var meditazioneRecordReference =
                    MeditazioneRecord.createDoc(widget.bloccoTemNewMed!);
                await meditazioneRecordReference.set({
                  ...createMeditazioneRecordData(
                    title: _model.textController1.text,
                    userRef: currentUserReference,
                    susubtitle: _model.textController2.text,
                    day: _model.textController4.text,
                    length: _model.textController3.text,
                  ),
                  ...mapToFirestore(
                    {
                      'created_at': FieldValue.serverTimestamp(),
                    },
                  ),
                });
                _model.listMedRefTitleOk =
                    MeditazioneRecord.getDocumentFromData({
                  ...createMeditazioneRecordData(
                    title: _model.textController1.text,
                    userRef: currentUserReference,
                    susubtitle: _model.textController2.text,
                    day: _model.textController4.text,
                    length: _model.textController3.text,
                  ),
                  ...mapToFirestore(
                    {
                      'created_at': DateTime.now(),
                    },
                  ),
                }, meditazioneRecordReference);
                logFirebaseEvent('Button_show_snack_bar');
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(
                      _model.listMedRefTitleOk!.title,
                      style: TextStyle(
                        color: FlutterFlowTheme.of(context).primaryText,
                      ),
                    ),
                    duration: const Duration(milliseconds: 4000),
                    backgroundColor: FlutterFlowTheme.of(context).secondary,
                  ),
                );
                logFirebaseEvent('Button_navigate_back');
                context.safePop();

                setState(() {});
              },
              text: 'Crea la Lezione',
              options: FFButtonOptions(
                width: 350.0,
                height: 56.0,
                padding: const EdgeInsets.all(0.0),
                iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                color: FlutterFlowTheme.of(context).buttonBackGround,
                textStyle: FlutterFlowTheme.of(context).headlineMedium.override(
                      fontFamily: 'Istok Web',
                      color: FlutterFlowTheme.of(context).buttonTextColor,
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
              width: 100.0,
              height: 100.0,
              decoration: const BoxDecoration(),
            ),
          ].divide(const SizedBox(height: 15.0)),
        ),
      ),
    );
  }
}
