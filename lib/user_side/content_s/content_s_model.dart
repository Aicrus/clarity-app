import '/flutter_flow/flutter_flow_util.dart';
import '/user_side/components/nav_bar/sonno_nav_bar/sonno_nav_bar_widget.dart';
import 'content_s_widget.dart' show ContentSWidget;
import 'package:flutter/material.dart';

class ContentSModel extends FlutterFlowModel<ContentSWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for SonnoNavBar component.
  late SonnoNavBarModel sonnoNavBarModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    sonnoNavBarModel = createModel(context, () => SonnoNavBarModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    sonnoNavBarModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
