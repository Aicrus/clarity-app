import '/flutter_flow/flutter_flow_util.dart';
import '/user_side/components/nav_bar/potenziamenti_nav_bar/potenziamenti_nav_bar_widget.dart';
import 'content_p_widget.dart' show ContentPWidget;
import 'package:flutter/material.dart';

class ContentPModel extends FlutterFlowModel<ContentPWidget> {
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
