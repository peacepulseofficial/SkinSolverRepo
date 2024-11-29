import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '/auth/base_auth_user_provider.dart';

import '/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';

export 'package:go_router/go_router.dart';
export 'serialization_util.dart';

const kTransitionInfoKey = '__transition_info__';

class AppStateNotifier extends ChangeNotifier {
  AppStateNotifier._();

  static AppStateNotifier? _instance;
  static AppStateNotifier get instance => _instance ??= AppStateNotifier._();

  BaseAuthUser? initialUser;
  BaseAuthUser? user;
  bool showSplashImage = true;
  String? _redirectLocation;

  /// Determines whether the app will refresh and build again when a sign
  /// in or sign out happens. This is useful when the app is launched or
  /// on an unexpected logout. However, this must be turned off when we
  /// intend to sign in/out and then navigate or perform any actions after.
  /// Otherwise, this will trigger a refresh and interrupt the action(s).
  bool notifyOnAuthChange = true;

  bool get loading => user == null || showSplashImage;
  bool get loggedIn => user?.loggedIn ?? false;
  bool get initiallyLoggedIn => initialUser?.loggedIn ?? false;
  bool get shouldRedirect => loggedIn && _redirectLocation != null;

  String getRedirectLocation() => _redirectLocation!;
  bool hasRedirect() => _redirectLocation != null;
  void setRedirectLocationIfUnset(String loc) => _redirectLocation ??= loc;
  void clearRedirectLocation() => _redirectLocation = null;

  /// Mark as not needing to notify on a sign in / out when we intend
  /// to perform subsequent actions (such as navigation) afterwards.
  void updateNotifyOnAuthChange(bool notify) => notifyOnAuthChange = notify;

  void update(BaseAuthUser newUser) {
    final shouldUpdate =
        user?.uid == null || newUser.uid == null || user?.uid != newUser.uid;
    initialUser ??= newUser;
    user = newUser;
    // Refresh the app on auth change unless explicitly marked otherwise.
    // No need to update unless the user has changed.
    if (notifyOnAuthChange && shouldUpdate) {
      notifyListeners();
    }
    // Once again mark the notifier as needing to update on auth change
    // (in order to catch sign in / out events).
    updateNotifyOnAuthChange(true);
  }

  void stopShowingSplashImage() {
    showSplashImage = false;
    notifyListeners();
  }
}

GoRouter createRouter(AppStateNotifier appStateNotifier) => GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: true,
      refreshListenable: appStateNotifier,
      errorBuilder: (context, state) =>
          appStateNotifier.loggedIn ? const LoadinPageWidget() : const LoadinPageWidget(),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) => appStateNotifier.loggedIn
              ? const LoadinPageWidget()
              : const LoadinPageWidget(),
        ),
        FFRoute(
          name: 'LoadinPage',
          path: '/loadinPage',
          builder: (context, params) => const LoadinPageWidget(),
        ),
        FFRoute(
          name: 'HomePage',
          path: '/homePage',
          builder: (context, params) => const HomePageWidget(),
        ),
        FFRoute(
          name: 'OnboardingName',
          path: '/onboardingName',
          builder: (context, params) => const OnboardingNameWidget(),
        ),
        FFRoute(
          name: 'Onboarding1',
          path: '/onboarding1',
          builder: (context, params) => const Onboarding1Widget(),
        ),
        FFRoute(
          name: 'Onboarding2',
          path: '/onboarding2',
          builder: (context, params) => const Onboarding2Widget(),
        ),
        FFRoute(
          name: 'Onboarding3',
          path: '/onboarding3',
          builder: (context, params) => const Onboarding3Widget(),
        ),
        FFRoute(
          name: 'Onboarding4',
          path: '/onboarding4',
          builder: (context, params) => const Onboarding4Widget(),
        ),
        FFRoute(
          name: 'Onboarding5',
          path: '/onboarding5',
          builder: (context, params) => const Onboarding5Widget(),
        ),
        FFRoute(
          name: 'Onboarding6',
          path: '/onboarding6',
          builder: (context, params) => const Onboarding6Widget(),
        ),
        FFRoute(
          name: 'Onboarding7',
          path: '/onboarding7',
          builder: (context, params) => const Onboarding7Widget(),
        ),
        FFRoute(
          name: 'Onboarding8',
          path: '/onboarding8',
          builder: (context, params) => const Onboarding8Widget(),
        ),
        FFRoute(
          name: 'Onboarding9',
          path: '/onboarding9',
          builder: (context, params) => const Onboarding9Widget(),
        ),
        FFRoute(
          name: 'Onboarding10',
          path: '/onboarding10',
          builder: (context, params) => const Onboarding10Widget(),
        ),
        FFRoute(
          name: 'Onboarding11',
          path: '/onboarding11',
          builder: (context, params) => const Onboarding11Widget(),
        ),
        FFRoute(
          name: 'Onboarding12',
          path: '/onboarding12',
          builder: (context, params) => const Onboarding12Widget(),
        ),
        FFRoute(
          name: 'resultsPage',
          path: '/resultsPage',
          builder: (context, params) => ResultsPageWidget(
            imageForScan: params.getParam(
              'imageForScan',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'Dermatologist',
          path: '/dermatologist',
          builder: (context, params) => const DermatologistWidget(),
        ),
        FFRoute(
          name: 'ResultsPageFixed',
          path: '/resultsPageFixed',
          builder: (context, params) => const ResultsPageFixedWidget(),
        ),
        FFRoute(
          name: 'ResultsPageSaveView',
          path: '/resultsPageSaveView',
          builder: (context, params) => const ResultsPageSaveViewWidget(),
        ),
        FFRoute(
          name: 'AcnePlanHome',
          path: '/acnePlanHome',
          builder: (context, params) => const AcnePlanHomeWidget(),
        ),
        FFRoute(
          name: 'NewPlanPage',
          path: '/newPlanPage',
          builder: (context, params) => const NewPlanPageWidget(),
        ),
        FFRoute(
          name: 'MorningRoutine',
          path: '/morningRoutine',
          builder: (context, params) => const MorningRoutineWidget(),
        ),
        FFRoute(
          name: 'NightRoutine',
          path: '/nightRoutine',
          builder: (context, params) => const NightRoutineWidget(),
        ),
        FFRoute(
          name: 'LifestyleTips',
          path: '/lifestyleTips',
          builder: (context, params) => const LifestyleTipsWidget(),
        ),
        FFRoute(
          name: 'OverallTipe',
          path: '/overallTipe',
          builder: (context, params) => const OverallTipeWidget(),
        ),
        FFRoute(
          name: 'Profile',
          path: '/profile',
          builder: (context, params) => const ProfileWidget(),
        ),
        FFRoute(
          name: 'SupportPage',
          path: '/supportPage',
          builder: (context, params) => const SupportPageWidget(),
        ),
        FFRoute(
          name: 'PrivacyPolicyPage',
          path: '/privacyPolicyPage',
          builder: (context, params) => const PrivacyPolicyPageWidget(),
        ),
        FFRoute(
          name: 'TermsOfServicePage',
          path: '/termsOfServicePage',
          builder: (context, params) => const TermsOfServicePageWidget(),
        ),
        FFRoute(
          name: 'ResultsPageFixedCopy',
          path: '/resultsPageFixedCopy',
          builder: (context, params) => const ResultsPageFixedCopyWidget(),
        ),
        FFRoute(
          name: 'OnboardingSecondLast',
          path: '/onboardingSecondLast',
          builder: (context, params) => const OnboardingSecondLastWidget(),
        ),
        FFRoute(
          name: 'paywallPage',
          path: '/paywallPage',
          builder: (context, params) => const PaywallPageWidget(),
        ),
        FFRoute(
          name: 'SecondOnboarding1',
          path: '/secondOnboarding1',
          builder: (context, params) => const SecondOnboarding1Widget(),
        ),
        FFRoute(
          name: 'NegativeOnboarding1',
          path: '/negativeOnboarding1',
          builder: (context, params) => const NegativeOnboarding1Widget(),
        ),
        FFRoute(
          name: 'NegativeOnboarding2',
          path: '/negativeOnboarding2',
          builder: (context, params) => const NegativeOnboarding2Widget(),
        ),
        FFRoute(
          name: 'NegativeOnboarding3',
          path: '/negativeOnboarding3',
          builder: (context, params) => const NegativeOnboarding3Widget(),
        ),
        FFRoute(
          name: 'NegativeOnboarding4',
          path: '/negativeOnboarding4',
          builder: (context, params) => const NegativeOnboarding4Widget(),
        ),
        FFRoute(
          name: 'NegativeOnboarding5',
          path: '/negativeOnboarding5',
          builder: (context, params) => const NegativeOnboarding5Widget(),
        ),
        FFRoute(
          name: 'PositiveOnboarding1',
          path: '/positiveOnboarding1',
          builder: (context, params) => const PositiveOnboarding1Widget(),
        ),
        FFRoute(
          name: 'PositiveOnboarding2',
          path: '/positiveOnboarding2',
          builder: (context, params) => const PositiveOnboarding2Widget(),
        ),
        FFRoute(
          name: 'PositiveOnboarding3',
          path: '/positiveOnboarding3',
          builder: (context, params) => const PositiveOnboarding3Widget(),
        ),
        FFRoute(
          name: 'PositiveOnboarding4',
          path: '/positiveOnboarding4',
          builder: (context, params) => const PositiveOnboarding4Widget(),
        ),
        FFRoute(
          name: 'WelcomeToAppPage',
          path: '/welcomeToAppPage',
          builder: (context, params) => const WelcomeToAppPageWidget(),
        ),
        FFRoute(
          name: 'RatingPage',
          path: '/ratingPage',
          builder: (context, params) => const RatingPageWidget(),
        ),
        FFRoute(
          name: 'DisclaimerPage',
          path: '/disclaimerPage',
          builder: (context, params) => const DisclaimerPageWidget(),
        ),
        FFRoute(
          name: 'ResultsPageSkinRatings',
          path: '/resultsPageSkinRatings',
          builder: (context, params) => ResultsPageSkinRatingsWidget(
            scanResult: params.getParam(
              'scanResult',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'ResultsPageRatingsSaved',
          path: '/resultsPageRatingsSaved',
          builder: (context, params) => ResultsPageRatingsSavedWidget(
            date: params.getParam(
              'date',
              ParamType.String,
            ),
            overallValue: params.getParam(
              'overallValue',
              ParamType.String,
            ),
            acneValue: params.getParam(
              'acneValue',
              ParamType.String,
            ),
            textureValue: params.getParam(
              'textureValue',
              ParamType.String,
            ),
            lipsValue: params.getParam(
              'lipsValue',
              ParamType.String,
            ),
            eyeBagsValue: params.getParam(
              'eyeBagsValue',
              ParamType.String,
            ),
            scarringValue: params.getParam(
              'scarringValue',
              ParamType.String,
            ),
            potentialValue: params.getParam(
              'potentialValue',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'GeneratingSCAN',
          path: '/generatingSCAN',
          builder: (context, params) => const GeneratingSCANWidget(),
        ),
        FFRoute(
          name: 'ResultsPageSkinRatingsCopy',
          path: '/resultsPageSkinRatingsCopy',
          builder: (context, params) => ResultsPageSkinRatingsCopyWidget(
            scanResult: params.getParam(
              'scanResult',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'ResultsPageRatingsSavedCopy',
          path: '/resultsPageRatingsSavedCopy',
          builder: (context, params) => ResultsPageRatingsSavedCopyWidget(
            date: params.getParam(
              'date',
              ParamType.String,
            ),
            overallValue: params.getParam(
              'overallValue',
              ParamType.String,
            ),
            acneValue: params.getParam(
              'acneValue',
              ParamType.String,
            ),
            textureValue: params.getParam(
              'textureValue',
              ParamType.String,
            ),
            lipsValue: params.getParam(
              'lipsValue',
              ParamType.String,
            ),
            eyeBagsValue: params.getParam(
              'eyeBagsValue',
              ParamType.String,
            ),
            scarringValue: params.getParam(
              'scarringValue',
              ParamType.String,
            ),
            potentialValue: params.getParam(
              'potentialValue',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'PositiveOnboarding5',
          path: '/positiveOnboarding5',
          builder: (context, params) => const PositiveOnboarding5Widget(),
        ),
        FFRoute(
          name: 'OnboardingSCAN2',
          path: '/onboardingSCAN2',
          builder: (context, params) => OnboardingSCAN2Widget(
            faceIMage: params.getParam(
              'faceIMage',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'onboardingSCAN1',
          path: '/onboardingSCAN1',
          builder: (context, params) => const OnboardingSCAN1Widget(),
        )
      ].map((r) => r.toRoute(appStateNotifier)).toList(),
    );

extension NavParamExtensions on Map<String, String?> {
  Map<String, String> get withoutNulls => Map.fromEntries(
        entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
}

extension NavigationExtensions on BuildContext {
  void goNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : goNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void pushNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : pushNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void safePop() {
    // If there is only one route on the stack, navigate to the initial
    // page instead of popping.
    if (canPop()) {
      pop();
    } else {
      go('/');
    }
  }
}

extension GoRouterExtensions on GoRouter {
  AppStateNotifier get appState => AppStateNotifier.instance;
  void prepareAuthEvent([bool ignoreRedirect = false]) =>
      appState.hasRedirect() && !ignoreRedirect
          ? null
          : appState.updateNotifyOnAuthChange(false);
  bool shouldRedirect(bool ignoreRedirect) =>
      !ignoreRedirect && appState.hasRedirect();
  void clearRedirectLocation() => appState.clearRedirectLocation();
  void setRedirectLocationIfUnset(String location) =>
      appState.updateNotifyOnAuthChange(false);
}

extension _GoRouterStateExtensions on GoRouterState {
  Map<String, dynamic> get extraMap =>
      extra != null ? extra as Map<String, dynamic> : {};
  Map<String, dynamic> get allParams => <String, dynamic>{}
    ..addAll(pathParameters)
    ..addAll(uri.queryParameters)
    ..addAll(extraMap);
  TransitionInfo get transitionInfo => extraMap.containsKey(kTransitionInfoKey)
      ? extraMap[kTransitionInfoKey] as TransitionInfo
      : TransitionInfo.appDefault();
}

class FFParameters {
  FFParameters(this.state, [this.asyncParams = const {}]);

  final GoRouterState state;
  final Map<String, Future<dynamic> Function(String)> asyncParams;

  Map<String, dynamic> futureParamValues = {};

  // Parameters are empty if the params map is empty or if the only parameter
  // present is the special extra parameter reserved for the transition info.
  bool get isEmpty =>
      state.allParams.isEmpty ||
      (state.allParams.length == 1 &&
          state.extraMap.containsKey(kTransitionInfoKey));
  bool isAsyncParam(MapEntry<String, dynamic> param) =>
      asyncParams.containsKey(param.key) && param.value is String;
  bool get hasFutures => state.allParams.entries.any(isAsyncParam);
  Future<bool> completeFutures() => Future.wait(
        state.allParams.entries.where(isAsyncParam).map(
          (param) async {
            final doc = await asyncParams[param.key]!(param.value)
                .onError((_, __) => null);
            if (doc != null) {
              futureParamValues[param.key] = doc;
              return true;
            }
            return false;
          },
        ),
      ).onError((_, __) => [false]).then((v) => v.every((e) => e));

  dynamic getParam<T>(
    String paramName,
    ParamType type, {
    bool isList = false,
    List<String>? collectionNamePath,
  }) {
    if (futureParamValues.containsKey(paramName)) {
      return futureParamValues[paramName];
    }
    if (!state.allParams.containsKey(paramName)) {
      return null;
    }
    final param = state.allParams[paramName];
    // Got parameter from `extras`, so just directly return it.
    if (param is! String) {
      return param;
    }
    // Return serialized value.
    return deserializeParam<T>(
      param,
      type,
      isList,
      collectionNamePath: collectionNamePath,
    );
  }
}

class FFRoute {
  const FFRoute({
    required this.name,
    required this.path,
    required this.builder,
    this.requireAuth = false,
    this.asyncParams = const {},
    this.routes = const [],
  });

  final String name;
  final String path;
  final bool requireAuth;
  final Map<String, Future<dynamic> Function(String)> asyncParams;
  final Widget Function(BuildContext, FFParameters) builder;
  final List<GoRoute> routes;

  GoRoute toRoute(AppStateNotifier appStateNotifier) => GoRoute(
        name: name,
        path: path,
        redirect: (context, state) {
          if (appStateNotifier.shouldRedirect) {
            final redirectLocation = appStateNotifier.getRedirectLocation();
            appStateNotifier.clearRedirectLocation();
            return redirectLocation;
          }

          if (requireAuth && !appStateNotifier.loggedIn) {
            appStateNotifier.setRedirectLocationIfUnset(state.uri.toString());
            return '/loadinPage';
          }
          return null;
        },
        pageBuilder: (context, state) {
          fixStatusBarOniOS16AndBelow(context);
          final ffParams = FFParameters(state, asyncParams);
          final page = ffParams.hasFutures
              ? FutureBuilder(
                  future: ffParams.completeFutures(),
                  builder: (context, _) => builder(context, ffParams),
                )
              : builder(context, ffParams);
          final child = appStateNotifier.loading
              ? Center(
                  child: SizedBox(
                    width: 50.0,
                    height: 50.0,
                    child: CircularProgressIndicator(
                      valueColor: AlwaysStoppedAnimation<Color>(
                        FlutterFlowTheme.of(context).primary,
                      ),
                    ),
                  ),
                )
              : page;

          final transitionInfo = state.transitionInfo;
          return transitionInfo.hasTransition
              ? CustomTransitionPage(
                  key: state.pageKey,
                  child: child,
                  transitionDuration: transitionInfo.duration,
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) =>
                          PageTransition(
                    type: transitionInfo.transitionType,
                    duration: transitionInfo.duration,
                    reverseDuration: transitionInfo.duration,
                    alignment: transitionInfo.alignment,
                    child: child,
                  ).buildTransitions(
                    context,
                    animation,
                    secondaryAnimation,
                    child,
                  ),
                )
              : MaterialPage(key: state.pageKey, child: child);
        },
        routes: routes,
      );
}

class TransitionInfo {
  const TransitionInfo({
    required this.hasTransition,
    this.transitionType = PageTransitionType.fade,
    this.duration = const Duration(milliseconds: 300),
    this.alignment,
  });

  final bool hasTransition;
  final PageTransitionType transitionType;
  final Duration duration;
  final Alignment? alignment;

  static TransitionInfo appDefault() => const TransitionInfo(hasTransition: false);
}

class RootPageContext {
  const RootPageContext(this.isRootPage, [this.errorRoute]);
  final bool isRootPage;
  final String? errorRoute;

  static bool isInactiveRootPage(BuildContext context) {
    final rootPageContext = context.read<RootPageContext?>();
    final isRootPage = rootPageContext?.isRootPage ?? false;
    final location = GoRouterState.of(context).uri.toString();
    return isRootPage &&
        location != '/' &&
        location != rootPageContext?.errorRoute;
  }

  static Widget wrap(Widget child, {String? errorRoute}) => Provider.value(
        value: RootPageContext(true, errorRoute),
        child: child,
      );
}

extension GoRouterLocationExtension on GoRouter {
  String getCurrentLocation() {
    final RouteMatch lastMatch = routerDelegate.currentConfiguration.last;
    final RouteMatchList matchList = lastMatch is ImperativeRouteMatch
        ? lastMatch.matches
        : routerDelegate.currentConfiguration;
    return matchList.uri.toString();
  }
}
