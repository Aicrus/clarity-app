import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'potenzia_lesson_text_field_editor_model.dart';
export 'potenzia_lesson_text_field_editor_model.dart';

class PotenziaLessonTextFieldEditorWidget extends StatefulWidget {
  const PotenziaLessonTextFieldEditorWidget({
    super.key,
    required this.docPot,
  });

  final PotenziamentiRecord? docPot;

  @override
  State<PotenziaLessonTextFieldEditorWidget> createState() =>
      _PotenziaLessonTextFieldEditorWidgetState();
}

class _PotenziaLessonTextFieldEditorWidgetState
    extends State<PotenziaLessonTextFieldEditorWidget> {
  late PotenziaLessonTextFieldEditorModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PotenziaLessonTextFieldEditorModel());

    _model.titleController ??=
        TextEditingController(text: widget.docPot?.title);
    _model.titleFocusNode ??= FocusNode();

    _model.subTitleController ??=
        TextEditingController(text: widget.docPot?.susubtitle);
    _model.subTitleFocusNode ??= FocusNode();

    _model.indexController1 ??= TextEditingController(text: widget.docPot?.day);
    _model.indexFocusNode1 ??= FocusNode();

    _model.indexController2 ??=
        TextEditingController(text: widget.docPot?.length);
    _model.indexFocusNode2 ??= FocusNode();

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
      width: 350.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).gradientTop,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
            child: TextFormField(
              controller: _model.titleController,
              focusNode: _model.titleFocusNode,
              autofocus: true,
              obscureText: false,
              decoration: InputDecoration(
                labelText: 'Title',
                labelStyle: FlutterFlowTheme.of(context).labelMedium.override(
                      fontFamily: 'Istok Web',
                      color: FlutterFlowTheme.of(context).textInputColor,
                    ),
                hintStyle: FlutterFlowTheme.of(context).labelMedium,
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: FlutterFlowTheme.of(context).alternate,
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: FlutterFlowTheme.of(context).primary,
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                errorBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: FlutterFlowTheme.of(context).error,
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                focusedErrorBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: FlutterFlowTheme.of(context).error,
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Istok Web',
                    color: FlutterFlowTheme.of(context).textInputColor,
                  ),
              validator: _model.titleControllerValidator.asValidator(context),
            ),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
            child: TextFormField(
              controller: _model.subTitleController,
              focusNode: _model.subTitleFocusNode,
              autofocus: true,
              obscureText: false,
              decoration: InputDecoration(
                labelText: 'Subtitle',
                labelStyle: FlutterFlowTheme.of(context).labelMedium.override(
                      fontFamily: 'Istok Web',
                      color: FlutterFlowTheme.of(context).textInputColor,
                    ),
                hintStyle: FlutterFlowTheme.of(context).labelMedium,
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: FlutterFlowTheme.of(context).alternate,
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: FlutterFlowTheme.of(context).primary,
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                errorBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: FlutterFlowTheme.of(context).error,
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                focusedErrorBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: FlutterFlowTheme.of(context).error,
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Istok Web',
                    color: FlutterFlowTheme.of(context).textInputColor,
                  ),
              validator:
                  _model.subTitleControllerValidator.asValidator(context),
            ),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
            child: TextFormField(
              controller: _model.indexController1,
              focusNode: _model.indexFocusNode1,
              autofocus: true,
              obscureText: false,
              decoration: InputDecoration(
                labelText: 'Index',
                labelStyle: FlutterFlowTheme.of(context).labelMedium.override(
                      fontFamily: 'Istok Web',
                      color: FlutterFlowTheme.of(context).textInputColor,
                    ),
                hintText: 'Enter index cardinal',
                hintStyle: FlutterFlowTheme.of(context).labelMedium.override(
                      fontFamily: 'Istok Web',
                      color: FlutterFlowTheme.of(context).textInputColor,
                    ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: FlutterFlowTheme.of(context).alternate,
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: FlutterFlowTheme.of(context).primary,
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                errorBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: FlutterFlowTheme.of(context).error,
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                focusedErrorBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: FlutterFlowTheme.of(context).error,
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Istok Web',
                    color: FlutterFlowTheme.of(context).textInputColor,
                  ),
              validator: _model.indexController1Validator.asValidator(context),
            ),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
            child: TextFormField(
              controller: _model.indexController2,
              focusNode: _model.indexFocusNode2,
              autofocus: true,
              obscureText: false,
              decoration: InputDecoration(
                labelText: 'Length',
                labelStyle: FlutterFlowTheme.of(context).labelMedium.override(
                      fontFamily: 'Istok Web',
                      color: FlutterFlowTheme.of(context).textInputColor,
                    ),
                hintText: 'Insert length',
                hintStyle: FlutterFlowTheme.of(context).labelMedium.override(
                      fontFamily: 'Istok Web',
                      color: FlutterFlowTheme.of(context).textInputColor,
                    ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: FlutterFlowTheme.of(context).alternate,
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: FlutterFlowTheme.of(context).primary,
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                errorBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: FlutterFlowTheme.of(context).error,
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                focusedErrorBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: FlutterFlowTheme.of(context).error,
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Istok Web',
                    color: FlutterFlowTheme.of(context).textInputColor,
                  ),
              validator: _model.indexController2Validator.asValidator(context),
            ),
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              FFButtonWidget(
                onPressed: () async {
                  logFirebaseEvent('POTENZIA_LESSON_TEXT_FIELD_EDITOR_DISMIS');
                  logFirebaseEvent('Button_bottom_sheet');
                  Navigator.pop(context);
                },
                text: 'Dismiss',
                options: FFButtonOptions(
                  height: 40.0,
                  padding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                  iconPadding:
                      const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  color: FlutterFlowTheme.of(context).primary,
                  textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                        fontFamily: 'Istok Web',
                        color:
                            FlutterFlowTheme.of(context).iconsAndToggleButtons,
                      ),
                  elevation: 3.0,
                  borderSide: const BorderSide(
                    color: Colors.transparent,
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(20.0),
                ),
              ),
              FFButtonWidget(
                onPressed: () async {
                  logFirebaseEvent('POTENZIA_LESSON_TEXT_FIELD_EDITOR_SAVE_B');
                  logFirebaseEvent('Button_backend_call');

                  await widget.docPot!.reference
                      .update(createPotenziamentiRecordData(
                    title: _model.titleController.text,
                    susubtitle: _model.subTitleController.text,
                    day: _model.indexController1.text,
                    length: _model.indexController2.text,
                  ));
                  logFirebaseEvent('Button_bottom_sheet');
                  Navigator.pop(context);
                },
                text: 'Save',
                options: FFButtonOptions(
                  height: 40.0,
                  padding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                  iconPadding:
                      const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  color: FlutterFlowTheme.of(context).primary,
                  textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                        fontFamily: 'Istok Web',
                        color:
                            FlutterFlowTheme.of(context).iconsAndToggleButtons,
                      ),
                  elevation: 3.0,
                  borderSide: const BorderSide(
                    color: Colors.transparent,
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(20.0),
                ),
              ),
            ],
          ),
        ].divide(const SizedBox(height: 15.0)).around(const SizedBox(height: 15.0)),
      ),
    );
  }
}
