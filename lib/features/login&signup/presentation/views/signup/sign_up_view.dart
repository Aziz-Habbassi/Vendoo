import 'package:flutter/material.dart';
import 'package:vendoo/core/constants/constants.dart';
import 'package:vendoo/features/login&signup/presentation/shared_widgets/animated_background.dart';
import 'package:vendoo/features/login&signup/presentation/shared_widgets/custom_button.dart';
import 'package:vendoo/features/login&signup/presentation/views/login/widgets/login_footer.dart';
import 'package:vendoo/features/login&signup/presentation/views/login/widgets/login_header.dart';
import 'package:vendoo/features/login&signup/presentation/views/login/widgets/login_text_field.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const AnimatedBackground(),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const LoginHeader(),
              const Text(
                "Let's make an Account",
                style: TextStyle(
                  color: Color.fromARGB(255, 255, 255, 255),
                  fontSize: 30,
                  shadows: [Shadow(color: kprimaryColor, blurRadius: 24)],
                  fontFamily: "Poppins",
                ),
              ),
              const SizedBox(height: 26),
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
                  prefixIcon: Icon(Icons.mail, color: kprimaryColor),
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
              CustomButton(text: "Sign Up"),
              const SizedBox(height: 16),
              LoginFooter(),
            ],
          ),
        ],
      ),
    );
  }
}
