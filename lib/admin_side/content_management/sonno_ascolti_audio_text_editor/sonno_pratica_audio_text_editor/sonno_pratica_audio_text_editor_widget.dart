import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'sonno_pratica_audio_text_editor_model.dart';
export 'sonno_pratica_audio_text_editor_model.dart';

class SonnoPraticaAudioTextEditorWidget extends StatefulWidget {
  const SonnoPraticaAudioTextEditorWidget({
    super.key,
    required this.docMedita,
  });

  final AudioPraticaSonnoRecord? docMedita;

  @override
  State<SonnoPraticaAudioTextEditorWidget> createState() =>
      _SonnoPraticaAudioTextEditorWidgetState();
}

class _SonnoPraticaAudioTextEditorWidgetState
    extends State<SonnoPraticaAudioTextEditorWidget> {
  late SonnoPraticaAudioTextEditorModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SonnoPraticaAudioTextEditorModel());

    _model.titleController ??=
        TextEditingController(text: widget.docMedita?.title);
    _model.titleFocusNode ??= FocusNode();

    _model.subTitleController ??=
        TextEditingController(text: widget.docMedita?.length);
    _model.subTitleFocusNode ??= FocusNode();

    _model.indexController ??=
        TextEditingController(text: widget.docMedita?.index.toString());
    _model.indexFocusNode ??= FocusNode();

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
                labelText: 'Length',
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
              controller: _model.indexController,
              focusNode: _model.indexFocusNode,
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
              validator: _model.indexControllerValidator.asValidator(context),
            ),
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              FFButtonWidget(
                onPressed: () async {
                  logFirebaseEvent('SONNO_PRATICA_AUDIO_TEXT_EDITOR_DISMISS_');
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
                  logFirebaseEvent('SONNO_PRATICA_AUDIO_TEXT_EDITOR_SAVE_BTN');
                  logFirebaseEvent('Button_backend_call');

                  await widget.docMedita!.reference
                      .update(createAudioPraticaSonnoRecordData(
                    title: _model.titleController.text,
                    length: _model.subTitleController.text,
                    index: int.tryParse(_model.indexController.text),
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
