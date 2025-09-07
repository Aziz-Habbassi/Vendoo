import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:vendoo/core/constants/constants.dart';

class SignUpFooter extends StatelessWidget {
  const SignUpFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Already have an account ?",
          style: TextStyle(
            color: const Color.fromARGB(255, 255, 255, 255),
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(width: 6),
        GestureDetector(
          onTap: () => context.go('/'),
          child: Text(
            "Login",
            style: TextStyle(
              color: kprimaryColor,
              fontSize: 17,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
