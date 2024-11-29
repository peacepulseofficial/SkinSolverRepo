import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'analyzing_scan_sheet_model.dart';
export 'analyzing_scan_sheet_model.dart';

class AnalyzingScanSheetWidget extends StatefulWidget {
  const AnalyzingScanSheetWidget({super.key});

  @override
  State<AnalyzingScanSheetWidget> createState() =>
      _AnalyzingScanSheetWidgetState();
}

class _AnalyzingScanSheetWidgetState extends State<AnalyzingScanSheetWidget> {
  late AnalyzingScanSheetModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AnalyzingScanSheetModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Lottie.asset(
                'assets/jsons/loading.json',
                width: 200.0,
                height: 200.0,
                fit: BoxFit.contain,
                animate: true,
              ),
              Flexible(
                child: Text(
                  'Generating your scan..',
                  textAlign: TextAlign.center,
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Inter',
                        fontSize: 34.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w600,
                      ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
