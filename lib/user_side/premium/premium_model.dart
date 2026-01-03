import '/flutter_flow/flutter_flow_util.dart';
import '/user_side/components/free_trial/free_trial_widget.dart';
import 'premium_widget.dart' show PremiumWidget;
import 'package:flutter/material.dart';

class PremiumModel extends FlutterFlowModel<PremiumWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [RevenueCat - Purchase] action in Button widget.
  bool? sixMonthuccess;
  // Stores action output result for [RevenueCat - Purchase] action in Button widget.
  bool? monthlySuccess;
  // Model for freeTrial component.
  late FreeTrialModel freeTrialModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    freeTrialModel = createModel(context, () => FreeTrialModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    freeTrialModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
