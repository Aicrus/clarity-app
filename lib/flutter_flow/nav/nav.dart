import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '/backend/backend.dart';

import '/auth/base_auth_user_provider.dart';

import '/backend/push_notifications/push_notifications_handler.dart'
    show PushNotificationsHandler;
import '/index.dart';
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
      errorBuilder: (context, state) => appStateNotifier.loggedIn
          ? const HomeMWidget()
          : const SplashScreenWidget(),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) => appStateNotifier.loggedIn
              ? const HomeMWidget()
              : const SplashScreenWidget(),
        ),
        FFRoute(
          name: 'authRoute',
          path: '/authRoute',
          builder: (context, params) => const AuthRouteWidget(),
        ),
        FFRoute(
          name: 'signUp',
          path: '/signUp',
          builder: (context, params) => const SignUpWidget(),
        ),
        FFRoute(
          name: 'resetPassword',
          path: '/resetPassword',
          builder: (context, params) => const ResetPasswordWidget(),
        ),
        FFRoute(
          name: 'homeP',
          path: '/homeP',
          builder: (context, params) => const HomePWidget(),
        ),
        FFRoute(
          name: 'contentP',
          path: '/contentP',
          builder: (context, params) => ContentPWidget(
            lessonRefPotenzia: params.getParam('lessonRefPotenzia',
                ParamType.DocumentReference, false, ['Lessons']),
          ),
        ),
        FFRoute(
          name: 'audioP',
          path: '/audioP',
          asyncParams: {
            'docPotenzia': getDoc(
                ['Lessons', 'Potenziamenti'], PotenziamentiRecord.fromSnapshot),
          },
          builder: (context, params) => AudioPWidget(
            docPotenzia: params.getParam('docPotenzia', ParamType.Document),
          ),
        ),
        FFRoute(
          name: 'homeS',
          path: '/homeS',
          builder: (context, params) => const HomeSWidget(),
        ),
        FFRoute(
          name: 'contentS',
          path: '/contentS',
          builder: (context, params) => ContentSWidget(
            lessonRefSonno: params.getParam('lessonRefSonno',
                ParamType.DocumentReference, false, ['Lessons']),
          ),
        ),
        FFRoute(
          name: 'audioS',
          path: '/audioS',
          asyncParams: {
            'audioRef': getDoc(['Lessons', 'Sonno'], SonnoRecord.fromSnapshot),
          },
          builder: (context, params) => AudioSWidget(
            audioRef: params.getParam('audioRef', ParamType.Document),
          ),
        ),
        FFRoute(
          name: 'agendaForm',
          path: '/agendaForm',
          builder: (context, params) => const AgendaFormWidget(),
        ),
        FFRoute(
          name: 'agendaList',
          path: '/agendaList',
          builder: (context, params) => const AgendaListWidget(),
        ),
        FFRoute(
          name: 'menu',
          path: '/menu',
          builder: (context, params) => const MenuWidget(),
        ),
        FFRoute(
          name: 'signIn',
          path: '/signIn',
          builder: (context, params) => const SignInWidget(),
        ),
        FFRoute(
          name: 'question',
          path: '/question',
          builder: (context, params) => const QuestionWidget(),
        ),
        FFRoute(
          name: 'privacyPolicy',
          path: '/privacyPolicy',
          builder: (context, params) => const PrivacyPolicyWidget(),
        ),
        FFRoute(
          name: 'changeMail',
          path: '/changeMail',
          builder: (context, params) => const ChangeMailWidget(),
        ),
        FFRoute(
          name: 'logOut',
          path: '/logOut',
          builder: (context, params) => const LogOutWidget(),
        ),
        FFRoute(
          name: 'deleteAccount',
          path: '/deleteAccount',
          builder: (context, params) => const DeleteAccountWidget(),
        ),
        FFRoute(
          name: 'settings',
          path: '/settings',
          builder: (context, params) => const SettingsWidget(),
        ),
        FFRoute(
          name: 'linkUtili',
          path: '/linkUtili',
          builder: (context, params) => const LinkUtiliWidget(),
        ),
        FFRoute(
          name: 'qna',
          path: '/qna',
          builder: (context, params) => const QnaWidget(),
        ),
        FFRoute(
          name: 'qnaDomandeTecniche',
          path: '/qnaDomandeTecniche',
          builder: (context, params) => const QnaDomandeTecnicheWidget(),
        ),
        FFRoute(
          name: 'qnaMeditazione',
          path: '/qnaMeditazione',
          builder: (context, params) => const QnaMeditazioneWidget(),
        ),
        FFRoute(
          name: 'contactUs',
          path: '/contactUs',
          builder: (context, params) => const ContactUsWidget(),
        ),
        FFRoute(
          name: 'premium',
          path: '/premium',
          builder: (context, params) => const PremiumWidget(),
        ),
        FFRoute(
          name: 'onboarding',
          path: '/onboarding',
          builder: (context, params) => const OnboardingWidget(),
        ),
        FFRoute(
          name: 'onboardingRoute',
          path: '/onboardingRoute',
          builder: (context, params) => const OnboardingRouteWidget(),
        ),
        FFRoute(
          name: 'changePassword',
          path: '/changePassword',
          builder: (context, params) => const ChangePasswordWidget(),
        ),
        FFRoute(
          name: 'reminder',
          path: '/reminder',
          builder: (context, params) => const ReminderWidget(),
        ),
        FFRoute(
          name: 'AdminContentAddForm',
          path: '/adminContentAddForm',
          builder: (context, params) => const AdminContentAddFormWidget(),
        ),
        FFRoute(
          name: 'homeM',
          path: '/homeM',
          builder: (context, params) => HomeMWidget(
            showRatingModal: params.getParam('showRatingModal', ParamType.bool),
          ),
        ),
        FFRoute(
          name: 'contentM',
          path: '/contentM',
          builder: (context, params) => ContentMWidget(
            lessonRefMedita: params.getParam('lessonRefMedita',
                ParamType.DocumentReference, false, ['Lessons']),
          ),
        ),
        FFRoute(
          name: 'audioM',
          path: '/audioM',
          builder: (context, params) => AudioMWidget(
            audioRef: params.getParam('audioRef', ParamType.DocumentReference,
                false, ['Lessons', 'Meditazione']),
          ),
        ),
        FFRoute(
          name: 'DashBoardMeditazioni',
          path: '/dashBoardMeditazioni',
          builder: (context, params) => const DashBoardMeditazioniWidget(),
        ),
        FFRoute(
          name: 'adminmenu',
          path: '/adminmenu',
          builder: (context, params) => const AdminmenuWidget(),
        ),
        FFRoute(
          name: 'DashBoardPotenziamenti',
          path: '/dashBoardPotenziamenti',
          builder: (context, params) => const DashBoardPotenziamentiWidget(),
        ),
        FFRoute(
          name: 'DashBoardSonno',
          path: '/dashBoardSonno',
          builder: (context, params) => const DashBoardSonnoWidget(),
        ),
        FFRoute(
          name: 'splashScreen',
          path: '/splashScreen',
          builder: (context, params) => const SplashScreenWidget(),
        )
      ].map((r) => r.toRoute(appStateNotifier)).toList(),
      observers: [routeObserver],
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
      (state.extraMap.length == 1 &&
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
    ParamType type, [
    bool isList = false,
    List<String>? collectionNamePath,
  ]) {
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
    return deserializeParam<T>(param, type, isList,
        collectionNamePath: collectionNamePath);
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
            return '/splashScreen';
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
              ? Container(
                  color: Colors.transparent,
                  child: Image.asset(
                    'assets/images/Splash_screen_light.jpg',
                    fit: BoxFit.cover,
                  ),
                )
              : PushNotificationsHandler(child: page);

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

  static TransitionInfo appDefault() => const TransitionInfo(
        hasTransition: true,
        transitionType: PageTransitionType.fade,
        duration: Duration(milliseconds: 0),
      );
}

class RootPageContext {
  const RootPageContext(this.isRootPage, [this.errorRoute]);
  final bool isRootPage;
  final String? errorRoute;

  static bool isInactiveRootPage(BuildContext context) {
    final rootPageContext = context.read<RootPageContext?>();
    final isRootPage = rootPageContext?.isRootPage ?? false;
    final location = GoRouter.of(context).routerDelegate.currentConfiguration.uri.toString();
    return isRootPage &&
        location != '/' &&
        location != rootPageContext?.errorRoute;
  }

  static Widget wrap(Widget child, {String? errorRoute}) => Provider.value(
        value: RootPageContext(true, errorRoute),
        child: child,
      );
}
