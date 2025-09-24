import 'package:flutter/material.dart';

class ResendEmailButton extends StatelessWidget {
  const ResendEmailButton({super.key, this.ontap, required this.text});
  final void Function()? ontap;
  final String text;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        alignment: Alignment.center,
        width: 200,
        height: 50,
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 255, 255, 255),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Text(
          text,
          style: TextStyle(
            color: const Color.fromARGB(255, 255, 171, 64),
            fontFamily: "Poppins",
          ),
        ),
      ),
    );
  }
}
