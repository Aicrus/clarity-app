import '/flutter_flow/flutter_flow_util.dart';
import 'medita_lesson_text_field_editor_widget.dart'
    show MeditaLessonTextFieldEditorWidget;
import 'package:flutter/material.dart';

class MeditaLessonTextFieldEditorModel
    extends FlutterFlowModel<MeditaLessonTextFieldEditorWidget> {
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
  FocusNode? indexFocusNode1;
  TextEditingController? indexController1;
  String? Function(BuildContext, String?)? indexController1Validator;
  // State field(s) for index widget.
  FocusNode? indexFocusNode2;
  TextEditingController? indexController2;
  String? Function(BuildContext, String?)? indexController2Validator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    titleFocusNode?.dispose();
    titleController?.dispose();

    subTitleFocusNode?.dispose();
    subTitleController?.dispose();

    indexFocusNode1?.dispose();
    indexController1?.dispose();

    indexFocusNode2?.dispose();
    indexController2?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
