import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:vendoo/app_routes.dart';
import 'package:vendoo/core/constants/constants.dart';

class LoginFooter extends StatelessWidget {
  const LoginFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Don't have an account ?",
              style: TextStyle(
                color: const Color.fromARGB(255, 255, 255, 255),
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(width: 6),
            GestureDetector(
              onTap: () => context.go(AppRoutes.signUp),
              child: Text(
                "Sign Up",
                style: TextStyle(
                  color: kprimaryColor,
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Divider(
                thickness: 2,
                color: kprimaryColor,
                indent: MediaQuery.of(context).size.width * 0.2,
              ),
            ),
            const SizedBox(width: 10),
            Text(
              "Or Login using",
              style: TextStyle(
                color: kprimaryColor,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Divider(
                thickness: 2,
                color: kprimaryColor,
                endIndent: MediaQuery.of(context).size.width * 0.2,
              ),
            ),
          ],
        ),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              "assets/images/loginView/facebook_logo.svg",
              height: 70,
            ),
            const SizedBox(width: 50),
            SvgPicture.asset(
              "assets/images/loginView/google_logo.svg",
              height: 60,
            ),
          ],
        ),
      ],
    );
  }
}
