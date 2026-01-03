import '/flutter_flow/flutter_flow_util.dart';
import '/user_side/components/nav_bar/medita_nav_bar/medita_nav_bar_widget.dart';
import 'home_m_widget.dart' show HomeMWidget;
import 'package:flutter/material.dart';

class HomeMModel extends FlutterFlowModel<HomeMWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for MeditaNavBar component.
  late MeditaNavBarModel meditaNavBarModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    meditaNavBarModel = createModel(context, () => MeditaNavBarModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    meditaNavBarModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
