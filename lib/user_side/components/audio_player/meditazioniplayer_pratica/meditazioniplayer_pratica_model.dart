import '/flutter_flow/flutter_flow_util.dart';
import '/user_side/components/nav_bar/medita_nav_bar/medita_nav_bar_widget.dart';
import 'meditazioniplayer_pratica_widget.dart'
    show MeditazioniplayerPraticaWidget;
import 'package:flutter/material.dart';

class MeditazioniplayerPraticaModel
    extends FlutterFlowModel<MeditazioniplayerPraticaWidget> {
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
