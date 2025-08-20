import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:rive/rive.dart' as rive;

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            width: MediaQuery.of(context).size.width * 1.5,
            top: MediaQuery.of(context).size.height * 0.2,
            child: Image.asset("assets/images/loginView/Spline.png"),
          ),
          rive.RiveAnimation.asset(
            "assets/riveAnimations/shapes.riv",
            speedMultiplier: 2,
          ),

          Positioned.fill(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
              child: SizedBox(),
            ),
          ),
        ],
      ),
    );
  }
}
