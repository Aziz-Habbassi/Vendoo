import 'package:flutter/material.dart';
import 'package:vendoo/core/constants/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.prefixIcon,
    required this.hintText,
  });
  final Icon prefixIcon;
  final String hintText;
  @override
  Widget build(BuildContext context) {
    return TextField(
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
