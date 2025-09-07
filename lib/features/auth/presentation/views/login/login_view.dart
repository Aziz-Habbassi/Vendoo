import 'package:flutter/material.dart';
import 'package:vendoo/features/auth/presentation/shared_widgets/animated_background.dart';
import 'package:vendoo/features/auth/presentation/views/login/widgets/login_foreground.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [const AnimatedBackground(), const LoginForeground()],
      ),
    );
  }
}
