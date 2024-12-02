import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'new_plan_page_widget.dart' show NewPlanPageWidget;
import 'package:flutter/material.dart';

class NewPlanPageModel extends FlutterFlowModel<NewPlanPageWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for DropDownSkinType widget.
  String? dropDownSkinTypeValue;
  FormFieldController<String>? dropDownSkinTypeValueController;
  // State field(s) for DropDownAcneType widget.
  String? dropDownAcneTypeValue;
  FormFieldController<String>? dropDownAcneTypeValueController;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  ChaChingRecord? key;
  // Stores action output result for [Custom Action - invokeChatGPTRoutineSelection] action in Button widget.
  String? routineNumber;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
