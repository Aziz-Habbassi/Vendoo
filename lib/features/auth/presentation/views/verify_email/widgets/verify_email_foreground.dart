import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';
import 'package:vendoo/app_routes.dart';
import 'package:vendoo/core/constants/constants.dart';
import 'package:vendoo/features/auth/presentation/shared_widgets/custom_button.dart';
import 'package:vendoo/features/auth/presentation/views/verify_email/widgets/resend_email_button.dart';

class VerifyEmailForeground extends StatelessWidget {
  const VerifyEmailForeground({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                  onPressed: () {
                    context.go(AppRoutes.signUp);
                  },
                  icon: Icon(Icons.clear, size: 32),
                ),
              ],
            ),

            Lottie.asset("assets/animations/verify_email_animation.json"),
            const Text(
              "Verify Your Account",
              style: TextStyle(
                color: Color.fromARGB(255, 255, 255, 255),
                fontSize: 28,
                shadows: [Shadow(color: kprimaryColor, blurRadius: 24)],
                fontFamily: "Poppins",
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 35),
              child: Column(
                children: [
                  Text(
                    "Aziz123@gmail.com",
                    style: TextStyle(
                      color: const Color.fromARGB(255, 255, 255, 255),
                      fontSize: 16,
                      fontFamily: "Poppins",
                    ),
                  ),
                  const SizedBox(height: 15),
                  Text(
                    "Your account has been created! To keep it secure, we’ve sent a verification link to your email. Please check your inbox and click the link to activate your account.",
                    style: TextStyle(
                      color: const Color.fromARGB(255, 255, 255, 255),
                      fontSize: 13,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            CustomButton(text: "continue", ontap: () {}),
            const SizedBox(height: 15),
            ResendEmailButton(text: "Resend Email", ontap: () {}),
          ],
        ),
      ),
    );
  }
}
