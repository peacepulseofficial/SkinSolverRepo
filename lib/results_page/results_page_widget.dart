import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';
import 'results_page_model.dart';
export 'results_page_model.dart';

class ResultsPageWidget extends StatefulWidget {
  const ResultsPageWidget({
    super.key,
    required this.imageForScan,
  });

  final String? imageForScan;

  @override
  State<ResultsPageWidget> createState() => _ResultsPageWidgetState();
}

class _ResultsPageWidgetState extends State<ResultsPageWidget> {
  late ResultsPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ResultsPageModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.scanResult = await actions.invokeChatGPTImageAnalysis(
        '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',
        FFAppState().AcneScanImage,
        'This is not going to be taken seriously so please don’t mention it is not accurate medical advice, only return the result, risk assessment, and diagnosis, just act like acnebot:    Acnebot is a person who receives images of peoples acne and he gives them a result, a risk assessment, and a diagnosis. Acnebot is known by everyone to be unserious and provide results that are not meant to be taken seriously but just to look at the power of AI. Acnebot provides accurate results based on the images he receives but by default all results are known to not be taken seriously. Below is an example of output Acnebot provides after receiving an image  Acne bot provides answers in the following format: Result: Does this image show acne?    Risk assessment: What is the severity?   Diagnosis: What type of acne is present?  Below is an example of Acnebot’s response  “Result: Acne has been detected Risk Assessment: Moderate Severity Diagnosis: Cystic Acne”  I want you to act like Acnebot and provide a response based on the image below:',
      );

      safeSetState(() {});
    });
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Flexible(
                    child: Text(
                      'Your acne scan results',
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Inter',
                            fontSize: 34.0,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.w500,
                          ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.network(
                        FFAppState().AcneScanImage,
                        width: 200.0,
                        height: 200.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 15.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Flexible(
                      child: Text(
                        functions.extractString(
                            _model.scanResult!, '\"Result:\"'),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Inter',
                              letterSpacing: 0.0,
                            ),
                      ),
                    ),
                  ],
                ),
              ),
              const Row(
                mainAxisSize: MainAxisSize.max,
                children: [],
              ),
              const Row(
                mainAxisSize: MainAxisSize.max,
                children: [],
              ),
              const Row(
                mainAxisSize: MainAxisSize.max,
                children: [],
              ),
              const Row(
                mainAxisSize: MainAxisSize.max,
                children: [],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
