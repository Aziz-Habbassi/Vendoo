import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:vendoo/core/constants/constants.dart';
import 'package:vendoo/features/auth/presentation/shared_widgets/custom_button.dart';
import 'package:vendoo/features/auth/presentation/shared_widgets/custom_text_field.dart';
import 'package:vendoo/features/auth/presentation/shared_widgets/custom_snackbar.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({super.key});

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  bool isLoading = false;
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
          isLoading
              ? LoadingAnimationWidget.threeArchedCircle(
                  color: kprimaryColor,
                  size: 30,
                )
              : CustomButton(
                  text: "Sign Up",
                  ontap: () async {
                    isLoading = true;
                    setState(() {});
                    if (formkey.currentState!.validate()) {
                      final messenger = ScaffoldMessenger.of(context);
                      try {
                        await Supabase.instance.client.auth.signUp(
                          data: {"name": name},
                          email: mail,
                          password: password!,
                        );
                        isLoading = false;
                        setState(() {});
                        messenger.showSnackBar(
                          customSnackbar(message: "Success", type: "success"),
                        );
                      } on AuthException catch (e) {
                        messenger.showSnackBar(
                          customSnackbar(message: e.message, type: "error"),
                        );
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
