import 'package:flutter/material.dart';
import 'package:vendoo/core/constants/constants.dart';
import 'package:vendoo/features/login&signup/presentation/views/login/widgets/login_text_field.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: LoginTextField(
            prefixIcon: Icon(Icons.person, color: kprimaryColor),
          ),
        ),
        SizedBox(height: 24),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: LoginTextField(
            prefixIcon: Icon(Icons.mail, color: kprimaryColor),
          ),
        ),
        SizedBox(height: 24),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: LoginTextField(
            prefixIcon: Icon(Icons.password, color: kprimaryColor),
          ),
        ),
      ],
    );
  }
}
