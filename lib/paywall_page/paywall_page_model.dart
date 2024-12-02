import '/flutter_flow/flutter_flow_util.dart';
import 'paywall_page_widget.dart' show PaywallPageWidget;
import 'package:flutter/material.dart';

class PaywallPageModel extends FlutterFlowModel<PaywallPageWidget> {
  ///  Local state fields for this page.

  bool trialOptionSelected = true;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [RevenueCat - Purchase] action in Button widget.
  bool? didTrialPurchase;
  // Stores action output result for [RevenueCat - Purchase] action in Button widget.
  bool? didAnnualPurchase;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
