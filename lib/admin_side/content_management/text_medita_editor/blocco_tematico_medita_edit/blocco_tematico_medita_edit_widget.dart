import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'blocco_tematico_medita_edit_model.dart';
export 'blocco_tematico_medita_edit_model.dart';

class BloccoTematicoMeditaEditWidget extends StatefulWidget {
  const BloccoTematicoMeditaEditWidget({
    super.key,
    required this.docLesson,
  });

  final LessonsRecord? docLesson;

  @override
  State<BloccoTematicoMeditaEditWidget> createState() =>
      _BloccoTematicoMeditaEditWidgetState();
}

class _BloccoTematicoMeditaEditWidgetState
    extends State<BloccoTematicoMeditaEditWidget> {
  late BloccoTematicoMeditaEditModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BloccoTematicoMeditaEditModel());

    _model.titleController ??=
        TextEditingController(text: widget.docLesson?.title);
    _model.titleFocusNode ??= FocusNode();

    _model.categoryController ??=
        TextEditingController(text: widget.docLesson?.category);
    _model.categoryFocusNode ??= FocusNode();

    _model.indexController ??=
        TextEditingController(text: widget.docLesson?.index);
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
              controller: _model.categoryController,
              focusNode: _model.categoryFocusNode,
              autofocus: true,
              obscureText: false,
              decoration: InputDecoration(
                labelText: 'Category',
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
                  _model.categoryControllerValidator.asValidator(context),
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
              validator: _model.indexControllerValidator.asValidator(context),
            ),
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              FFButtonWidget(
                onPressed: () async {
                  logFirebaseEvent('BLOCCO_TEMATICO_MEDITA_EDIT_DISMISS_BTN_');
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
                  logFirebaseEvent('BLOCCO_TEMATICO_MEDITA_EDIT_SAVE_BTN_ON_');
                  logFirebaseEvent('Button_backend_call');

                  await widget.docLesson!.reference
                      .update(createLessonsRecordData(
                    title: _model.titleController.text,
                    index: _model.indexController.text,
                    category: _model.categoryController.text,
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
