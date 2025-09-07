import 'package:flutter/material.dart';
import 'package:vendoo/features/auth/presentation/shared_widgets/custom_button.dart';
import 'package:vendoo/features/auth/presentation/views/login/widgets/login_footer.dart';
import 'package:vendoo/features/auth/presentation/views/login/widgets/login_form.dart';
import 'package:vendoo/features/auth/presentation/views/login/widgets/login_header.dart';

class LoginForeground extends StatelessWidget {
  const LoginForeground({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 100),
            const LoginHeader(),
            const LoginForm(),
            const SizedBox(height: 24),
            const CustomButton(text: "Login"),
            const SizedBox(height: 16),
            const LoginFooter(),
          ],
        ),
      ),
    );
  }
}
