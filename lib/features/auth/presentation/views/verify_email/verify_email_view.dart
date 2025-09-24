import 'package:flutter/material.dart';
import 'package:vendoo/features/auth/presentation/shared_widgets/animated_background.dart';
import 'package:vendoo/features/auth/presentation/views/verify_email/widgets/verify_email_foreground.dart';

class VerifyEmailView extends StatelessWidget {
  const VerifyEmailView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [const AnimatedBackground(), const VerifyEmailForeground()],
      ),
    );
  }
}
