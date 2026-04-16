import 'dart:async';

import 'package:base_project/core/route/app_route_redirect.dart';
import 'package:base_project/core/route/app_route_name.dart';
import 'package:base_project/module/home/presentation/pages/home/home_page.dart';
import 'package:base_project/module/splash/presentation/pages/splash/splash_page.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final Completer<void> rootNavigatorCompleter = Completer<void>();
final rootNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'root');
final bottomNavigatorKey = GlobalKey<StatefulNavigationShellState>(
  debugLabel: 'bottom',
);

class AppRoute {
  AppRoute._();

  static final GoRouter router = GoRouter(
    debugLogDiagnostics: kDebugMode,
    navigatorKey: rootNavigatorKey,
    initialLocation: "/",
    routes: [
      // default path is to /home
      GoRoute(path: "/", redirect: (context, state) => "/splash"),
      GoRoute(
        path: "/splash",
        name: AppRouteName.splash,
        builder: (context, state) {
          return SplashPage();
        },
      ),
      GoRoute(
        path: "/auth",
        name: AppRouteName.home,
        redirect: AppRouteRedirect.needNoAuth,
        builder: (context, state) {
          return HomePage();
        },
      ),
    ],
  );
}
