import 'package:flutter/material.dart';
import 'package:vendoo/features/auth/presentation/shared_widgets/animated_background.dart';
import 'package:vendoo/features/auth/presentation/views/success/widgets/success_foreground.dart';

class SuccessView extends StatelessWidget {
  const SuccessView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [const AnimatedBackground(), const SuccessForeground()],
      ),
    );
  }
}
