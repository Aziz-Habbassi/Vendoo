import 'package:flutter/material.dart';
import 'package:vendoo/core/constants/constants.dart';
import 'package:vendoo/features/login&signup/presentation/shared_widgets/custom_button.dart';
import 'package:vendoo/features/login&signup/presentation/views/login/widgets/login_footer.dart';
import 'package:vendoo/features/login&signup/presentation/views/login/widgets/login_header.dart';
import 'package:vendoo/features/login&signup/presentation/views/login/widgets/login_text_field.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
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
        LoginFooter(),
      ],
    );
  }
}
