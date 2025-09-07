import 'package:flutter/material.dart';
import 'package:vendoo/features/auth/presentation/views/signup/widgets/sign_up_footer.dart';
import 'package:vendoo/features/auth/presentation/views/signup/widgets/sign_up_form.dart';
import 'package:vendoo/features/auth/presentation/views/signup/widgets/sign_up_header.dart';

class SignUpForeground extends StatelessWidget {
  const SignUpForeground({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 100),
            const SignUpHeader(),
            const SizedBox(height: 26),
            const SignUpForm(),
            const SizedBox(height: 16),
            SignUpFooter(),
          ],
        ),
      ),
    );
  }
}
