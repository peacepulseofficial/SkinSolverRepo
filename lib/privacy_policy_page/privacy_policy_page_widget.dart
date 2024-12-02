import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'privacy_policy_page_model.dart';
export 'privacy_policy_page_model.dart';

class PrivacyPolicyPageWidget extends StatefulWidget {
  const PrivacyPolicyPageWidget({super.key});

  @override
  State<PrivacyPolicyPageWidget> createState() =>
      _PrivacyPolicyPageWidgetState();
}

class _PrivacyPolicyPageWidgetState extends State<PrivacyPolicyPageWidget> {
  late PrivacyPolicyPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PrivacyPolicyPageModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 0.0, 0.0),
                  child: InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      context.safePop();
                    },
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.arrow_back,
                          color: FlutterFlowTheme.of(context).primaryText,
                          size: 34.0,
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              10.0, 0.0, 0.0, 0.0),
                          child: Text(
                            'Privacy Policy',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Inter',
                                  fontSize: 24.0,
                                  letterSpacing: 0.0,
                                ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Flexible(
                        child: Text(
                          'Privacy Policy for SkinSolver\nEffective Date: October 16, 2024\n\nAt SkinSolver, we value your privacy and are committed to protecting your personal information. This Privacy Policy explains how we collect, use, and safeguard your data when you use our services through our mobile application, website, and other services (collectively, the \"Service\").\n\nBy using our Service, you agree to the collection and use of information in accordance with this Privacy Policy. If you do not agree to this policy, please do not use our Service.\n\nInformation We Collect\nWe collect various types of information in order to provide and improve our Service:\n\n1.1 Personal Data\nUser-provided Information: When you use our app, you may provide us with personal data, including:\n\nName\nEmail address\nProfile picture (optional)\nSkin type and preferences (to personalize suggestions and recommendations)\nAny information provided through the skin scan feature (image uploads of your skin)\nAnonymous Authentication: We may allow you to use the app without registering an account, where you remain anonymous. In this case, we assign an anonymized user ID.\n\n1.2 Automatically Collected Information\nWhen you use our app, we automatically collect certain information about your device, including:\n\nIP address\nDevice information (e.g., operating system, device type, unique device identifiers)\nUsage data (e.g., interactions with the app, features accessed)\nCookies and similar tracking technologies\n1.3 Skin Scan Data (Face Data)\nThe images you upload for skin analysis are temporarily stored for processing.\n\nWe do not retain face data after processing.\nFace data is temporarily stored to enable AI-powered image processing for generating personalized skin-related recommendations.\nSkin scan images (face data) are stored only temporarily, typically for a few minutes, until the analysis is completed and results are generated. Once the analysis is complete, the images are permanently deleted from our systems.\nFace data is not shared with any third party except for processing via trusted services like OpenAI (as detailed below).\nHow We Use Your Information\nWe use the information we collect for various purposes, including:\n\nTo provide and improve the Service: We use the data to offer personalized skin-related recommendations and analysis.\nTo communicate with you: We may send you notifications, updates, or marketing content (only if you have opted in).\nTo improve app performance: We analyze app usage data to enhance user experience and fix technical issues.\nTo comply with legal obligations: We may retain and use your data to comply with applicable laws and regulations.\nSharing Your Information\nWe do not sell or rent your personal information to third parties. However, we may share your data with trusted third parties under certain conditions:\n\nService Providers: We use third-party services such as cloud storage, analytics tools, and AI processing to help deliver the Service.\nLaw Enforcement: We may disclose your information to comply with legal requests, enforce agreements, or protect the safety and rights of users and others.\nThird-Party Services\nOur app may use third-party services for various functionalities, including:\n\nFirebase: For authentication, cloud storage, and app usage analytics.\nRevenueCat: For handling subscriptions and payments.\nOpenAI: For processing skin image analysis and generating results.\nThese third parties may collect, store, and use data under their respective privacy policies. We encourage you to review their privacy policies.\n\nData Storage and Retention\nWe retain your personal information for as long as necessary to provide you with the Service or as required by law.\n\nFace Data:\n\nSkin scan images (face data) are stored only temporarily for the duration needed to process and generate analysis results. This typically occurs within minutes. Once the analysis is complete, the images are permanently deleted.\nWe do not retain face data after processing.\nFace data is temporarily stored only to ensure accurate processing and to provide results. Storing this data longer than the processing duration is unnecessary and avoided to protect user privacy.\nData Security\nWe take reasonable measures to protect your personal data from unauthorized access, alteration, disclosure, or destruction. However, no method of transmission over the Internet or electronic storage is 100% secure. While we strive to use commercially acceptable means to protect your information, we cannot guarantee its absolute security.\n\nYour Rights and Choices\nYou have the following rights concerning your personal information:\n\nAccess: You can request a copy of the data we hold about you.\nCorrection: You can update or correct your information at any time.\nDeletion: You can request that we delete your data, subject to legal obligations.\nOpt-out: You can opt-out of marketing communications at any time by adjusting your app settings or using the unsubscribe link in marketing emails.\nChildren\'s Privacy\nOur Service is not directed to anyone under the age of 13. We do not knowingly collect personal data from children under 13. If we become aware that we have collected personal data from a child under 13, we will take steps to delete such information.\n\nInternational Data Transfers\nIf you access our Service from outside the country where our servers are located, your information may be transferred across international borders. By using our Service, you consent to such data transfers.\n\nChanges to this Privacy Policy\nWe may update our Privacy Policy from time to time. Any changes will be reflected in the updated Privacy Policy posted on our app or website, and we will notify you of any significant changes. We encourage you to periodically review this Privacy Policy.\n\nContact Us\nIf you have any questions or concerns about this Privacy Policy, please contact us at:\n\nEmail: ceoofdealsforbuy@gmail.com',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Inter',
                                    fontSize: 19.0,
                                    letterSpacing: 0.0,
                                  ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
