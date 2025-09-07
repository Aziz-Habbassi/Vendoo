import 'package:flutter/material.dart';
import 'package:vendoo/core/constants/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.prefixIcon,
    required this.hintText,
    this.onchanged,
    this.validator,
  });
  final Icon prefixIcon;
  final String hintText;
  final void Function(String)? onchanged;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator,
      onChanged: onchanged,
      cursorColor: kprimaryColor,
      style: TextStyle(color: const Color.fromARGB(255, 255, 255, 255)),
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(color: const Color.fromARGB(255, 255, 212, 194)),
        prefixIcon: prefixIcon,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide(
            width: 2,
            color: const Color.fromARGB(255, 255, 171, 64),
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide(
            width: 2,
            color: const Color.fromARGB(255, 255, 171, 64),
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide(
            width: 2,
            color: const Color.fromARGB(255, 255, 171, 64),
          ),
        ),
      ),
    );
  }
}
