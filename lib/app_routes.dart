import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:vendoo/features/auth/controllers/cubits/auth_cubit/auth_cubit.dart';
import 'package:vendoo/features/auth/presentation/views/login/login_view.dart';
import 'package:vendoo/features/auth/presentation/views/signup/sign_up_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRoutes {
  static const String signUp = "/SignUpView";
  static final GoRouter router = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) {
          return BlocProvider(
            create: (context) => AuthCubit(),
            child: const LoginView(),
          );
        },
      ),
      GoRoute(
        path: signUp,
        builder: (BuildContext context, GoRouterState state) {
          return BlocProvider(
            create: (context) => AuthCubit(),
            child: const SignUpView(),
          );
        },
      ),
    ],
  );
}
