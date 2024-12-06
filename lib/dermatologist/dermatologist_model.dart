import '/flutter_flow/flutter_flow_util.dart';
import 'dermatologist_widget.dart' show DermatologistWidget;
import 'package:flutter/material.dart';

class DermatologistModel extends FlutterFlowModel<DermatologistWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for ListViewCurrent widget.
  ScrollController? listViewCurrent;
  // State field(s) for textPrompt widget.
  FocusNode? textPromptFocusNode;
  TextEditingController? textPromptTextController;
  String? Function(BuildContext, String?)? textPromptTextControllerValidator;
  // Stores action output result for [Custom Action - invokeChatGPTDermatologist] action in IconButton widget.
  dynamic chatResult;

  @override
  void initState(BuildContext context) {
    listViewCurrent = ScrollController();
  }

  @override
  void dispose() {
    listViewCurrent?.dispose();
    textPromptFocusNode?.dispose();
    textPromptTextController?.dispose();
  }
}
