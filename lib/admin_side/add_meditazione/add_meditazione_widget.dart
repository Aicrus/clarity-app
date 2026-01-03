import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'add_meditazione_model.dart';
export 'add_meditazione_model.dart';

class AddMeditazioneWidget extends StatefulWidget {
  const AddMeditazioneWidget({super.key});

  @override
  State<AddMeditazioneWidget> createState() => _AddMeditazioneWidgetState();
}

class _AddMeditazioneWidgetState extends State<AddMeditazioneWidget> {
  late AddMeditazioneModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AddMeditazioneModel());

    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Align(
            alignment: const AlignmentDirectional(0.0, -1.0),
            child: Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 0.0),
              child: Text(
                'Aggiungere un \nBlocco Tematico',
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
                              alignment: const AlignmentDirectional(0.0, 0.0),
                              child: FlutterFlowDropDown<String>(
                                controller: _model.dropDownValueController ??=
                                    FormFieldController<String>(
                                  _model.dropDownValue ??= 'Meditazione',
                                ),
                                options: const ['Meditazione'],
                                onChanged: (val) =>
                                    setState(() => _model.dropDownValue = val),
                                width: 350.0,
                                height: 50.0,
                                textStyle:
                                    FlutterFlowTheme.of(context).bodyMedium,
                                icon: Icon(
                                  Icons.keyboard_arrow_down_rounded,
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  size: 24.0,
                                ),
                                elevation: 2.0,
                                borderColor: FlutterFlowTheme.of(context)
                                    .textInputBorderColor,
                                borderWidth: 2.0,
                                borderRadius: 8.0,
                                margin: const EdgeInsetsDirectional.fromSTEB(
                                    16.0, 4.0, 16.0, 4.0),
                                hidesUnderline: true,
                                isSearchable: false,
                                isMultiSelect: false,
                              ),
                            ),
                            Align(
                              alignment: const AlignmentDirectional(-1.0, 0.0),
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    16.0, 0.0, 0.0, 0.0),
                                child: Text(
                                  'Titolo del blocco tematico:',
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
                                  controller: _model.textController,
                                  focusNode: _model.textFieldFocusNode,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    labelText: 'inserisci il titolo',
                                    labelStyle: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .override(
                                          fontFamily: 'Istok Web',
                                          color: FlutterFlowTheme.of(context)
                                              .textInputColor,
                                        ),
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide: const BorderSide(
                                        color: Color(0x00000000),
                                        width: 4.0,
                                      ),
                                      borderRadius: BorderRadius.circular(6.0),
                                    ),
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide: const BorderSide(
                                        color: Color(0x00000000),
                                        width: 4.0,
                                      ),
                                      borderRadius: BorderRadius.circular(6.0),
                                    ),
                                    errorBorder: UnderlineInputBorder(
                                      borderSide: const BorderSide(
                                        color: Color(0x00000000),
                                        width: 4.0,
                                      ),
                                      borderRadius: BorderRadius.circular(6.0),
                                    ),
                                    focusedErrorBorder: UnderlineInputBorder(
                                      borderSide: const BorderSide(
                                        color: Color(0x00000000),
                                        width: 4.0,
                                      ),
                                      borderRadius: BorderRadius.circular(6.0),
                                    ),
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Istok Web',
                                        color: FlutterFlowTheme.of(context)
                                            .textInputColor,
                                      ),
                                  validator: _model.textControllerValidator
                                      .asValidator(context),
                                ),
                              ),
                            ),
                          ].divide(const SizedBox(height: 12.0)),
                        ),
                      ),
                      SwitchListTile.adaptive(
                        value: _model.switchListTileValue ??= false,
                        onChanged: (newValue) async {
                          setState(
                              () => _model.switchListTileValue = newValue);
                        },
                        title: Text(
                          'Contenuto Premium?',
                          style:
                              FlutterFlowTheme.of(context).titleLarge.override(
                                    fontFamily: 'Istok Web',
                                    color: FlutterFlowTheme.of(context).titles,
                                  ),
                        ),
                        activeThumbColor: FlutterFlowTheme.of(context).primary,
                        activeTrackColor: FlutterFlowTheme.of(context).accent1,
                        dense: false,
                        controlAffinity: ListTileControlAffinity.trailing,
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
                        'ADD_MEDITAZIONE_REGISTRARE_IL_CAPITOLO_B');
                    logFirebaseEvent('Button_backend_call');

                    var lessonsRecordReference = LessonsRecord.collection.doc();
                    await lessonsRecordReference.set({
                      ...createLessonsRecordData(
                        title: _model.textController.text,
                        premium: _model.switchListTileValue,
                        category: _model.dropDownValue,
                      ),
                      ...mapToFirestore(
                        {
                          'created_at': FieldValue.serverTimestamp(),
                        },
                      ),
                    });
                    _model.newCatMedita = LessonsRecord.getDocumentFromData({
                      ...createLessonsRecordData(
                        title: _model.textController.text,
                        premium: _model.switchListTileValue,
                        category: _model.dropDownValue,
                      ),
                      ...mapToFirestore(
                        {
                          'created_at': DateTime.now(),
                        },
                      ),
                    }, lessonsRecordReference);
                    logFirebaseEvent('Button_bottom_sheet');
                    Navigator.pop(context);

                    setState(() {});
                  },
                  text: 'Crea Blocco tematico : ${_model.dropDownValue}',
                  options: FFButtonOptions(
                    width: 350.0,
                    height: 56.0,
                    padding: const EdgeInsets.all(0.0),
                    iconPadding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: FlutterFlowTheme.of(context).buttonBackGround,
                    textStyle: FlutterFlowTheme.of(context)
                        .headlineMedium
                        .override(
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
              FFButtonWidget(
                onPressed: () async {
                  logFirebaseEvent('ADD_MEDITAZIONE_COMP_CHUIDI_BTN_ON_TAP');
                  logFirebaseEvent('Button_bottom_sheet');
                  Navigator.pop(context);
                },
                text: 'Chuidi',
                options: FFButtonOptions(
                  width: 350.0,
                  height: 56.0,
                  padding: const EdgeInsets.all(0.0),
                  iconPadding:
                      const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  color: FlutterFlowTheme.of(context).buttonBackGround,
                  textStyle:
                      FlutterFlowTheme.of(context).headlineMedium.override(
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
                width: double.infinity,
                height: 100.0,
                decoration: const BoxDecoration(),
              ),
            ].divide(const SizedBox(height: 16.0)),
          ),
        ].divide(const SizedBox(height: 15.0)),
      ),
    );
  }
}
