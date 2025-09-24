import 'package:flutter/widgets.dart';
import 'package:lottie/lottie.dart';
import 'package:vendoo/core/constants/constants.dart';
import 'package:vendoo/features/auth/presentation/shared_widgets/custom_button.dart';

class VerifyEmailForeground extends StatelessWidget {
  const VerifyEmailForeground({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Image.asset("assets/images/logo&icon/dark_branding.png", height: 150),
          const Text(
            "Verify Your Account",
            style: TextStyle(
              color: Color.fromARGB(255, 255, 255, 255),
              fontSize: 36,
              shadows: [Shadow(color: kprimaryColor, blurRadius: 24)],
              fontFamily: "Poppins",
            ),
          ),
          Lottie.asset("assets/animations/verify_email_animation.json"),
          CustomButton(text: "Verify Account", ontap: () {}),
        ],
      ),
    );
  }
}
