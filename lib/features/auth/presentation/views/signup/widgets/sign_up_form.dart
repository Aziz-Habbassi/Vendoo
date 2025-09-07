import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:vendoo/core/constants/constants.dart';
import 'package:vendoo/features/auth/controllers/cubits/auth_cubit/auth_cubit.dart';
import 'package:vendoo/features/auth/presentation/shared_widgets/custom_button.dart';
import 'package:vendoo/features/auth/presentation/shared_widgets/custom_text_field.dart';
import 'package:vendoo/features/auth/presentation/shared_widgets/custom_snackbar.dart';

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
          BlocConsumer<AuthCubit, AuthState>(
            builder: (context, state) {
              if (state is AuthLoading) {
                return LoadingAnimationWidget.threeArchedCircle(
                  color: kprimaryColor,
                  size: 32,
                );
              } else if (state is AuthSuccess) {
                return CustomButton(text: "Sign Up");
              } else {
                return CustomButton(
                  text: "Sign Up",
                  ontap: () => BlocProvider.of<AuthCubit>(context).signUpUser(
                    email: mail!,
                    password: password!,
                    firstName: name!,
                    lastName: name!,
                    username: name!,
                  ),
                );
              }
            },
            listener: (context, state) {
              if (state is AuthSuccess) {
                ScaffoldMessenger.of(context).showSnackBar(
                  customSnackbar(message: "Success", type: "success"),
                );
              } else if (state is AuthError) {
                ScaffoldMessenger.of(context).showSnackBar(
                  customSnackbar(message: state.errMessage, type: "error"),
                );
              }
            },
          ),
        ],
      ),
    );
  }
}
