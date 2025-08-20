import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:vendoo/presentation/views/login_view/login_view.dart';

class AppRoutes {
  static final GoRouter router = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) {
          return const LoginView();
        },
      ),
    ],
  );
}
