import 'package:flutter/material.dart';
import 'package:vendoo/core/constants/constants.dart';
import 'package:vendoo/features/login&signup/presentation/shared_widgets/custom_text_field.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: CustomTextField(
            hintText: "E-mail",
            prefixIcon: Icon(Icons.mail, color: kprimaryColor),
          ),
        ),
        SizedBox(height: 24),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: CustomTextField(
            hintText: "Password",
            prefixIcon: Icon(Icons.password, color: kprimaryColor),
          ),
        ),
      ],
    );
  }
}
