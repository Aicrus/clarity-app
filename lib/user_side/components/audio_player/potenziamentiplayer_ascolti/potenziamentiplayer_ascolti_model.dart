import '/flutter_flow/flutter_flow_util.dart';
import '/user_side/components/nav_bar/medita_nav_bar/medita_nav_bar_widget.dart';
import 'potenziamentiplayer_ascolti_widget.dart'
    show PotenziamentiplayerAscoltiWidget;
import 'package:flutter/material.dart';

class PotenziamentiplayerAscoltiModel
    extends FlutterFlowModel<PotenziamentiplayerAscoltiWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for MeditaNavBar component.
  late MeditaNavBarModel meditaNavBarModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    meditaNavBarModel = createModel(context, () => MeditaNavBarModel());
  }

  @override
  void dispose() {
    meditaNavBarModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
