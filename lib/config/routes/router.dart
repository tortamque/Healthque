import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:healthque/config/routes/routes.dart';
import 'package:healthque/features/authorization/authorization.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'root');

final GoRouter router = GoRouter(
  navigatorKey: _rootNavigatorKey,
  initialLocation: Routes.authPage,
  routes: [
    StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) => AuthLayout(navigationShell: navigationShell),
      branches: [
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: Routes.authPage,
              builder: (context, state) => const AuthPage(),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: Routes.userInfoPage,
              builder: (context, state) => const UserInfoPage(),
            ),
          ],
        ),
      ],
    ),
  ],
);
