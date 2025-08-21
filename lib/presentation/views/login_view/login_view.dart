import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:rive/rive.dart' as rive;
import 'package:vendoo/core/constants/constants.dart';
import 'package:vendoo/presentation/views/login_view/widgets/custom_button.dart';
import 'package:vendoo/presentation/views/login_view/widgets/login_header.dart';
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
              child: Container(color: Colors.black.withAlpha(80)),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const LoginHeader(),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 24),
                child: LoginTextField(
                  prefixIcon: Icon(Icons.person, color: kprimaryColor),
                ),
              ),
              const SizedBox(height: 24),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 24),
                child: LoginTextField(
                  prefixIcon: Icon(Icons.password, color: kprimaryColor),
                ),
              ),
              const SizedBox(height: 24),
              CustomButton(text: "Login"),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account ?",
                    style: TextStyle(
                      color: const Color.fromARGB(255, 255, 255, 255),
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(width: 6),
                  GestureDetector(
                    child: Text(
                      "Sign Up",
                      style: TextStyle(
                        color: kprimaryColor,
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
