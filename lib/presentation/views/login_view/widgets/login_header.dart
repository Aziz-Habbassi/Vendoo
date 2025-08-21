import 'package:flutter/material.dart';

class LoginHeader extends StatelessWidget {
  const LoginHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          "Welcome To",
          style: TextStyle(
            color: Color.fromARGB(255, 255, 255, 255),
            fontSize: 36,
            shadows: [
              Shadow(color: Color.fromARGB(255, 255, 171, 64), blurRadius: 24),
            ],
            fontFamily: "Poppins",
          ),
        ),
        Image.asset("assets/images/logo&icon/dark_branding.png"),
      ],
    );
  }
}
