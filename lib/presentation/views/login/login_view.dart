import 'package:flutter/material.dart';
import 'package:vendoo/presentation/views/login/widgets/animated_background.dart';
import 'package:vendoo/presentation/views/login/widgets/login_form.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [const AnimatedBackground(), LoginForm()]),
    );
  }
}
