import 'package:flutter/material.dart';
import 'package:vendoo/core/constants/constants.dart';
import 'package:vendoo/features/auth/presentation/views/login/widgets/login_header.dart';

class SignUpHeader extends StatelessWidget {
  const SignUpHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        LoginHeader(),
        Text(
          "Let's make an Account",
          style: TextStyle(
            color: Color.fromARGB(255, 255, 255, 255),
            fontSize: 30,
            shadows: [Shadow(color: kprimaryColor, blurRadius: 24)],
            fontFamily: "Poppins",
          ),
        ),
      ],
    );
  }
}
