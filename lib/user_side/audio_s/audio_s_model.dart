import '/flutter_flow/flutter_flow_util.dart';
import '/user_side/components/nav_bar/medita_nav_bar/medita_nav_bar_widget.dart';
import 'audio_s_widget.dart' show AudioSWidget;
import 'package:flutter/material.dart';

class AudioSModel extends FlutterFlowModel<AudioSWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for MeditaNavBar component.
  late MeditaNavBarModel sonnoNavBarModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    sonnoNavBarModel = createModel(context, () => MeditaNavBarModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    sonnoNavBarModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
