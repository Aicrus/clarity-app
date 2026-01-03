import '/flutter_flow/flutter_flow_util.dart';
import 'medita_teoria_audio_text_editor_widget.dart'
    show MeditaTeoriaAudioTextEditorWidget;
import 'package:flutter/material.dart';

class MeditaTeoriaAudioTextEditorModel
    extends FlutterFlowModel<MeditaTeoriaAudioTextEditorWidget> {
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
