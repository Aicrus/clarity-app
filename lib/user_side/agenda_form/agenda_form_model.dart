import '/flutter_flow/flutter_flow_util.dart';
import '/user_side/components/nav_bar/diario_nav_bar/diario_nav_bar_widget.dart';
import 'agenda_form_widget.dart' show AgendaFormWidget;
import 'package:flutter/material.dart';

class AgendaFormModel extends FlutterFlowModel<AgendaFormWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode3;
  TextEditingController? textController3;
  String? Function(BuildContext, String?)? textController3Validator;
  // Model for DiarioNavBar component.
  late DiarioNavBarModel diarioNavBarModel;
  bool? isPremium;
  bool showPremiumPage = false;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    diarioNavBarModel = createModel(context, () => DiarioNavBarModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldFocusNode2?.dispose();
    textController2?.dispose();

    textFieldFocusNode3?.dispose();
    textController3?.dispose();

    diarioNavBarModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
