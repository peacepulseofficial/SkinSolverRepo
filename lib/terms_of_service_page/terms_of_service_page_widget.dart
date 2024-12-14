import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'terms_of_service_page_model.dart';
export 'terms_of_service_page_model.dart';

class TermsOfServicePageWidget extends StatefulWidget {
  const TermsOfServicePageWidget({super.key});

  @override
  State<TermsOfServicePageWidget> createState() =>
      _TermsOfServicePageWidgetState();
}

class _TermsOfServicePageWidgetState extends State<TermsOfServicePageWidget> {
  late TermsOfServicePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TermsOfServicePageModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
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
                            'Terms of Service',
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
                          'Terms of Service for SkinSolver\nEffective Date: October 16, 2024\n\nWelcome to SkinSolver! By accessing or using our mobile application, website, or any other services provided (collectively, the \"Service\"), you agree to be bound by these Terms of Service (\"Terms\"). If you do not agree to all the Terms, please do not use the Service.\n\nAcceptance of Terms\nBy accessing or using the Service, you agree to comply with these Terms and any applicable laws and regulations. If you are using the Service on behalf of an organization, you represent that you have the authority to bind the organization to these Terms.\n\nEligibility\nThe Service is not intended for use by anyone under the age of 13. If you are under 18, you may only use the Service under the supervision of a parent or guardian who agrees to be bound by these Terms.\n\nModifications to the Terms\nWe reserve the right to modify or revise these Terms at any time. You will be notified of any changes, and your continued use of the Service after any such changes indicates your acceptance of the new Terms. If you do not agree with the updated Terms, you must discontinue using the Service immediately.\n\nUser Responsibilities\nYou agree to use the Service in accordance with the following obligations:\n\nAccount Security: If you create an account, you are responsible for maintaining the confidentiality of your login credentials. You must notify us immediately of any unauthorized use of your account.\nCompliance: You agree not to use the Service in any unlawful or harmful manner, including but not limited to infringing intellectual property rights, uploading malicious content, or attempting to disrupt the Service.\nAccuracy of Information: You are responsible for ensuring that any information you provide to the Service is accurate, complete, and up to date. This includes skin scan data, personal information, and other inputs.\nHealth and Medical Disclaimer\nSkinSolver is not a medical service. All information and analysis provided through the app, including but not limited to skin analysis, acne diagnosis, and skin health recommendations, are for informational purposes only and should not be considered medical advice. SkinSolver’s analysis results are powered by artificial intelligence and are not substitutes for professional medical consultation.\nYou should always consult a qualified healthcare provider for any medical condition, treatment options, or health-related decisions. You agree that SkinSolver does not diagnose, treat, or provide medical opinions and that any decisions made based on the information from the Service are at your own risk.\n\nLimitation of Liability\nTo the maximum extent permitted by law, SkinSolver, its owners, employees, contractors, and affiliates shall not be liable for any damages or losses of any kind (including but not limited to direct, indirect, incidental, consequential, or punitive damages) arising from your use of or inability to use the Service, including any content or data provided by the Service.\nThis includes, but is not limited to:\n\nLoss of data\nDamage to your device\nSkin reactions, allergic responses, or other dermatological issues based on recommendations provided by the Service\nMisinterpretation or misuse of the skin analysis results\nIndemnification\nYou agree to indemnify, defend, and hold harmless SkinSolver, its owners, affiliates, and service providers from any and all claims, damages, losses, liabilities, and expenses (including reasonable attorney’s fees) arising from your use of the Service, your violation of these Terms, or your violation of any rights of third parties.\n\nIntellectual Property Rights\nAll content, designs, logos, trademarks, text, graphics, images, software, and other intellectual property found within the Service are the exclusive property of SkinSolver or its licensors. You may not copy, distribute, modify, or create derivative works of any content found on the Service without our express written permission.\n\nLicense to Use the Service\nWe grant you a limited, non-exclusive, non-transferable, revocable license to use the Service for your personal, non-commercial use. This license does not allow you to:\n\nSell, rent, lease, or sublicense the Service\nReverse-engineer, modify, or attempt to extract the source code from the Service\nUse the Service for any unlawful purposes\nViolation of these restrictions may result in immediate termination of your right to use the Service.\n\nThird-Party Services\nThe Service may contain links or integrate with third-party services (e.g., Firebase, RevenueCat, OpenAI for acne analysis). We do not control or endorse any third-party services and are not responsible for the content, privacy policies, or practices of these services. Your use of third-party services is subject to their respective terms and conditions.\n\nData Collection and Privacy\nBy using the Service, you agree to our Privacy Policy, which explains how we collect, use, and protect your personal data. You acknowledge and consent to the processing of your data as outlined in the Privacy Policy. We make no guarantee of privacy, and users should take measures to protect their own information, especially in shared or public environments.\n\nTermination\nWe reserve the right to suspend, restrict, or terminate your access to the Service at any time for any reason, including but not limited to:\n\nViolating these Terms\nEngaging in unlawful or harmful behavior\nDisrupting or abusing the Service\nUpon termination, your right to access or use the Service will cease immediately. We will not be liable to you or any third party for the termination or suspension of the Service.\n\nGoverning Law and Jurisdiction\nThese Terms are governed by the laws of [Insert Your State/Province] without regard to conflict of law principles. Any dispute arising out of or relating to these Terms or the Service will be subject to the exclusive jurisdiction of the courts located in [Insert Location].\n\nDisclaimer of Warranties\nThe Service is provided \"as is\" and \"as available,\" without any warranties of any kind, whether express or implied, including but not limited to:\n\nFitness for a particular purpose\nNon-infringement\nAccuracy of results\nWe make no warranties that the Service will be error-free, secure, or available at any particular time or location.\n\nLimitation of Use\nWe reserve the right to impose limits on your use of the Service, including restrictions on data storage or the number of scans you can perform. These limits may be adjusted at any time without prior notice.\n\nUser-Generated Content\nIf the Service allows users to post, upload, or share content (e.g., reviews, skin scan data), you retain ownership of any content you create, but by using the Service, you grant SkinSolver a non-exclusive, royalty-free, transferable, and worldwide license to use, reproduce, distribute, and display the content for the purposes of providing the Service.\n\nForce Majeure\nWe will not be responsible for any delays or failures in the performance of our obligations under these Terms caused by factors beyond our reasonable control, including but not limited to natural disasters, labor strikes, technical failures, or governmental action.\n\nContact Information\nIf you have any questions or concerns regarding these Terms or the Service, you can contact us at:\n\nEmail: ceoofdealsforbuy@gmail.com\n\n\nEntire Agreement\nThese Terms, together with our Privacy Policy, constitute the entire agreement between you and SkinSolver with respect to your use of the Service. They supersede any prior agreements or understandings, whether written or oral.\n',
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
