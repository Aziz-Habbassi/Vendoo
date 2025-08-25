import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:vendoo/core/constants/constants.dart';
import 'package:vendoo/features/login&signup/presentation/shared_widgets/custom_button.dart';
import 'package:vendoo/features/login&signup/presentation/shared_widgets/custom_text_field.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> formkey = GlobalKey<FormState>();
    String? name, mail, password;
    return Form(
      key: formkey,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: CustomTextField(
              onchanged: (value) {
                name = value;
              },
              validator: (value) {
                if (value!.isEmpty) {
                  return "Enter your Name";
                } else {
                  return null;
                }
              },
              hintText: "Your Name",
              prefixIcon: const Icon(Icons.person, color: kprimaryColor),
            ),
          ),
          const SizedBox(height: 24),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: CustomTextField(
              onchanged: (value) {
                mail = value;
              },
              validator: (value) {
                if (value!.isEmpty) {
                  return "Enter your E-mail";
                } else {
                  return null;
                }
              },
              hintText: "E-mail",
              prefixIcon: Icon(Icons.mail, color: kprimaryColor),
            ),
          ),
          const SizedBox(height: 24),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: CustomTextField(
              onchanged: (value) {
                password = value;
              },
              validator: (value) {
                if (value!.isEmpty) {
                  return "Enter your Password";
                } else {
                  return null;
                }
              },
              hintText: "Password",
              prefixIcon: Icon(Icons.password, color: kprimaryColor),
            ),
          ),
          const SizedBox(height: 24),
          CustomButton(
            text: "Sign Up",
            ontap: () async {
              if (formkey.currentState!.validate()) {
                try {
                  await Supabase.instance.client.auth.signUp(
                    data: {"name": name},
                    email: mail,
                    password: password!,
                  );
                } on AuthException catch (e) {
                  debugPrint(e.message);
                } catch (e) {
                  debugPrint(e.toString());
                }
              }
            },
          ),
        ],
      ),
    );
  }
}
