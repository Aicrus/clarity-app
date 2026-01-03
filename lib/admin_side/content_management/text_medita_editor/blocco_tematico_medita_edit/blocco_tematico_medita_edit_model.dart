import '/flutter_flow/flutter_flow_util.dart';
import 'blocco_tematico_medita_edit_widget.dart'
    show BloccoTematicoMeditaEditWidget;
import 'package:flutter/material.dart';

class BloccoTematicoMeditaEditModel
    extends FlutterFlowModel<BloccoTematicoMeditaEditWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for Title widget.
  FocusNode? titleFocusNode;
  TextEditingController? titleController;
  String? Function(BuildContext, String?)? titleControllerValidator;
  // State field(s) for Category widget.
  FocusNode? categoryFocusNode;
  TextEditingController? categoryController;
  String? Function(BuildContext, String?)? categoryControllerValidator;
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

    categoryFocusNode?.dispose();
    categoryController?.dispose();

    indexFocusNode?.dispose();
    indexController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
