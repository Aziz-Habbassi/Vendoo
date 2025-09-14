import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:vendoo/core/constants/constants.dart';
import 'package:vendoo/features/auth/controllers/cubits/auth_cubit/auth_cubit.dart';
import 'package:vendoo/features/auth/presentation/shared_widgets/custom_button.dart';
import 'package:vendoo/features/auth/presentation/shared_widgets/custom_snackbar.dart';
import 'package:vendoo/features/auth/presentation/shared_widgets/custom_text_field.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> formkey = GlobalKey<FormState>();
    String? email, password;
    return Form(
      key: formkey,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: CustomTextField(
              hintText: "E-mail",
              prefixIcon: const Icon(Icons.mail, color: kprimaryColor),
              onchanged: (value) {
                email = value;
              },
              validator: (value) {
                if (value!.isEmpty) {
                  return "Enter your E-mail";
                } else {
                  return null;
                }
              },
            ),
          ),
          const SizedBox(height: 24),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: CustomTextField(
              hintText: "Password",
              prefixIcon: const Icon(Icons.password, color: kprimaryColor),
              onchanged: (value) {
                password = value;
              },
              validator: (value) {
                if (value!.isEmpty) {
                  return "Enter your E-mail";
                } else {
                  return null;
                }
              },
            ),
          ),
          const SizedBox(height: 24),
          BlocConsumer<AuthCubit, AuthState>(
            listener: (context, state) {
              if (state is AuthError) {
                ScaffoldMessenger.of(context).showSnackBar(
                  customSnackbar(message: state.errMessage, type: "error"),
                );
              } else if (state is AuthSuccess) {
                context.go('/');
              }
            },
            builder: (context, state) {
              if (state is AuthLoading) {
                return LoadingAnimationWidget.threeArchedCircle(
                  color: kprimaryColor,
                  size: 32,
                );
              } else {
                return CustomButton(
                  text: "Login",
                  ontap: () {
                    if (formkey.currentState!.validate()) {
                      BlocProvider.of<AuthCubit>(
                        context,
                      ).singInUser(email: email!, password: password!);
                    }
                  },
                );
              }
            },
          ),
        ],
      ),
    );
  }
}
