import '/flutter_flow/flutter_flow_util.dart';
import '/user_side/components/nav_bar/potenziamenti_nav_bar/potenziamenti_nav_bar_widget.dart';
import 'home_p_widget.dart' show HomePWidget;
import 'package:flutter/material.dart';

class HomePModel extends FlutterFlowModel<HomePWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for PotenziamentiNavBar component.
  late PotenziamentiNavBarModel potenziamentiNavBarModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    potenziamentiNavBarModel =
        createModel(context, () => PotenziamentiNavBarModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    potenziamentiNavBarModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
