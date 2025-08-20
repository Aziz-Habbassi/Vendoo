import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:rive/rive.dart' as rive;
import 'package:vendoo/presentation/views/login_view/widgets/custom_button.dart';
import 'package:vendoo/presentation/views/login_view/widgets/login_text_field.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            width: MediaQuery.of(context).size.width * 1.5,
            top: MediaQuery.of(context).size.height * 0.2,
            left: 100,
            child: Image.asset("assets/images/loginView/Spline.png"),
          ),
          rive.RiveAnimation.asset(
            "assets/riveAnimations/shapes.riv",
            speedMultiplier: 2,
          ),

          Positioned.fill(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Welcome To",
                    style: TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontSize: 36,
                      shadows: [
                        Shadow(
                          color: Color.fromARGB(255, 255, 171, 64),
                          blurRadius: 24,
                        ),
                      ],
                      fontFamily: "Poppins",
                    ),
                  ),
                  Image.asset("assets/images/logo&icon/dark_branding.png"),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24),
                    child: LoginTextField(
                      prefixIcon: Icon(
                        Icons.person,
                        color: Color.fromARGB(255, 255, 171, 64),
                      ),
                    ),
                  ),
                  const SizedBox(height: 24),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24),
                    child: LoginTextField(
                      prefixIcon: Icon(
                        Icons.password,
                        color: Color.fromARGB(255, 255, 171, 64),
                      ),
                    ),
                  ),
                  SizedBox(height: 24),
                  CustomButton(text: "Login"),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
