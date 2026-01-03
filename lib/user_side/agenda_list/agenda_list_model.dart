import '/flutter_flow/flutter_flow_util.dart';
import '/user_side/components/nav_bar/diario_nav_bar/diario_nav_bar_widget.dart';
import 'agenda_list_widget.dart' show AgendaListWidget;
import 'package:flutter/material.dart';

class AgendaListModel extends FlutterFlowModel<AgendaListWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for DiarioNavBar component.
  late DiarioNavBarModel diarioNavBarModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    diarioNavBarModel = createModel(context, () => DiarioNavBarModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    diarioNavBarModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
