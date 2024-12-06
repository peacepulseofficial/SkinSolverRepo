import '/flutter_flow/flutter_flow_util.dart';
import 'onboarding_s_c_a_n1_widget.dart' show OnboardingSCAN1Widget;
import 'package:flutter/material.dart';

class OnboardingSCAN1Model extends FlutterFlowModel<OnboardingSCAN1Widget> {
  ///  State fields for stateful widgets in this page.

  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
