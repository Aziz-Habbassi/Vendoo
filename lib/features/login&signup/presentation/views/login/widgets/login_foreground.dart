import 'package:flutter/material.dart';
import 'package:vendoo/features/login&signup/presentation/shared_widgets/custom_button.dart';
import 'package:vendoo/features/login&signup/presentation/views/login/widgets/login_footer.dart';
import 'package:vendoo/features/login&signup/presentation/views/login/widgets/login_form.dart';
import 'package:vendoo/features/login&signup/presentation/views/login/widgets/login_header.dart';

class LoginForeground extends StatelessWidget {
  const LoginForeground({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const LoginHeader(),
        const LoginForm(),
        const SizedBox(height: 24),
        const CustomButton(text: "Login"),
        const SizedBox(height: 16),
        const LoginFooter(),
      ],
    );
  }
}
