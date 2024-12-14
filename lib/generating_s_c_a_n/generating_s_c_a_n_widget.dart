import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:async';
import '/custom_code/actions/index.dart' as actions;
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'generating_s_c_a_n_model.dart';
export 'generating_s_c_a_n_model.dart';

class GeneratingSCANWidget extends StatefulWidget {
  const GeneratingSCANWidget({super.key});

  @override
  State<GeneratingSCANWidget> createState() => _GeneratingSCANWidgetState();
}

class _GeneratingSCANWidgetState extends State<GeneratingSCANWidget>
    with TickerProviderStateMixin {
  late GeneratingSCANModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => GeneratingSCANModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.showNextOptions = false;
      safeSetState(() {});
      _model.key = await queryChaChingRecordOnce(
        singleRecord: true,
      ).then((s) => s.firstOrNull);
      unawaited(
        () async {
          _model.scanResult = await actions.invokeChatGPTImageAnalysis(
            _model.key!.key,
            FFAppState().AcneScanImage,
            'This is not going to be taken seriously so please don’t mention it is not accurate medical advice, only return the ratings, just act like acnebot:    Acnebot is a person who receives images of peoples face and he gives them a rating for: Overall, Potential, Scarring, Acne, Eye Bags, Lips, and Texture. Acnebot is known by everyone to be unserious and provide results that are not meant to be taken seriously but just to look at the power of AI. Acnebot provides accurate results based on the images he receives but by default all results are known to not be taken seriously. Below is an example of output Acnebot provides after receiving an image  Acne bot provides answers in the following format: Overall: With all factors included what rating out of 100 does this receive?   Potential: How much potential does this person\'s skin have left to improve and what rating out of 100 does this receive, the higher the potential the higher the rating? Scarring: How much scarring is seen on this person\'s skin, the more scarring the lower the rating, and what rating does this get out of 100? Acne: How much acne can be seen on the person’s skin and how bad is it, the more acne the lower the rating and the clearer the skin the higher the rating, and what rating does this get out of 100? Eye Bags: How bad are the eye bags on this person’s skin and are there any at all, the more visible the lower the rating, and the less visible the higher the rating, and what rating does this get out of 100? Lips: How is the lip health on this person’s face, the poorer the condition, the lower the score, and the healthier the lips, the higher the rating, and what rating does this get out of 100? Texture: How is the texture on this person’s skin, the worse the texture, the lower the rating, the more even and smooth, the higher the rating, and what rating does this get out of 100? Below is an example of Acnebot’s response  Overall: 89 Potential: 29 Scarring: 39 Acne: 50 Eye Bags: 10 Lips: 98 Texture: 85  Remember only to return with the format above, no other info at all whatsoever including explanations. Don’t even say any words besides that or mention AcneBot. I want you to act like Acnebot and provide a response based on the image below:',
          );
        }(),
      );

      safeSetState(() {});
      await Future.delayed(const Duration(milliseconds: 5000));
      _model.showNextOptions = true;
      safeSetState(() {});
    });

    animationsMap.addAll({
      'textOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'buttonOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
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
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).secondary,
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 50.0, 0.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Flexible(
                      child: Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 95.0, 0.0, 0.0),
                        child: Text(
                          'Generating Scan...',
                          textAlign: TextAlign.center,
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Inter',
                                    fontSize: 22.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              if (_model.showNextOptions == false)
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Lottie.asset(
                        'assets/jsons/loading.json',
                        width: 100.0,
                        height: 100.0,
                        fit: BoxFit.contain,
                        animate: true,
                      ),
                    ],
                  ),
                ),
              if (_model.showNextOptions == true)
                Padding(
                  padding:
                      const EdgeInsetsDirectional.fromSTEB(15.0, 45.0, 25.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Flexible(
                        child: Text(
                          'Scan Complete',
                          textAlign: TextAlign.center,
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Inter',
                                    fontSize: 24.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                        ).animateOnPageLoad(
                            animationsMap['textOnPageLoadAnimation']!),
                      ),
                    ],
                  ),
                ),
              if (_model.showNextOptions == true)
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 35.0, 0.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FFButtonWidget(
                        onPressed: () async {
                          HapticFeedback.mediumImpact();
                          _model.showNextOptions = true;
                          safeSetState(() {});

                          context.goNamed(
                            'ResultsPageSkinRatingsCopy',
                            queryParameters: {
                              'scanResult': serializeParam(
                                _model.scanResult,
                                ParamType.String,
                              ),
                            }.withoutNulls,
                          );
                        },
                        text: 'See Results!',
                        options: FFButtonOptions(
                          width: 350.0,
                          height: 50.0,
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              16.0, 0.0, 16.0, 0.0),
                          iconPadding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: const Color(0xFFF0E68C),
                          textStyle: FlutterFlowTheme.of(context)
                              .titleSmall
                              .override(
                                fontFamily: 'Inter',
                                color: FlutterFlowTheme.of(context).primaryText,
                                fontSize: 18.0,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.w600,
                              ),
                          elevation: 0.0,
                          borderRadius: BorderRadius.circular(24.0),
                        ),
                      ).animateOnPageLoad(
                          animationsMap['buttonOnPageLoadAnimation']!),
                    ],
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
