import 'package:flutter/material.dart';
import 'package:vendoo/features/login&signup/presentation/shared_widgets/custom_button.dart';
import 'package:vendoo/features/login&signup/presentation/views/login/widgets/login_footer.dart';
import 'package:vendoo/features/login&signup/presentation/views/signup/widgets/sign_up_form.dart';
import 'package:vendoo/features/login&signup/presentation/views/signup/widgets/sign_up_header.dart';

class SignUpForeground extends StatelessWidget {
  const SignUpForeground({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SignUpHeader(),
        const SizedBox(height: 26),
        const SignUpForm(),
        const SizedBox(height: 24),
        CustomButton(text: "Sign Up"),
        const SizedBox(height: 16),
        LoginFooter(),
      ],
    );
  }
}
