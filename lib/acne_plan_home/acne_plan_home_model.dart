import '/components/footer_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'acne_plan_home_widget.dart' show AcnePlanHomeWidget;
import 'package:flutter/material.dart';

class AcnePlanHomeModel extends FlutterFlowModel<AcnePlanHomeWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for Footer component.
  late FooterModel footerModel;

  @override
  void initState(BuildContext context) {
    footerModel = createModel(context, () => FooterModel());
  }

  @override
  void dispose() {
    footerModel.dispose();
  }
}
