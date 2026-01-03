import '/flutter_flow/flutter_flow_util.dart';
import 'medita_pratica_audio_text_editor_widget.dart'
    show MeditaPraticaAudioTextEditorWidget;
import 'package:flutter/material.dart';

class MeditaPraticaAudioTextEditorModel
    extends FlutterFlowModel<MeditaPraticaAudioTextEditorWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for Title widget.
  FocusNode? titleFocusNode;
  TextEditingController? titleController;
  String? Function(BuildContext, String?)? titleControllerValidator;
  // State field(s) for SubTitle widget.
  FocusNode? subTitleFocusNode;
  TextEditingController? subTitleController;
  String? Function(BuildContext, String?)? subTitleControllerValidator;
  // State field(s) for index widget.
  FocusNode? indexFocusNode;
  TextEditingController? indexController;
  String? Function(BuildContext, String?)? indexControllerValidator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    titleFocusNode?.dispose();
    titleController?.dispose();

    subTitleFocusNode?.dispose();
    subTitleController?.dispose();

    indexFocusNode?.dispose();
    indexController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
