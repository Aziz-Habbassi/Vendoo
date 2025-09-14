import 'package:flutter/material.dart';

SnackBar customSnackbar({required String message, required String type}) {
  return SnackBar(
    margin: EdgeInsets.symmetric(horizontal: 40),
    content: Text(
      message,
      style: TextStyle(fontFamily: "Poppins"),
      textAlign: TextAlign.center,
    ),
    backgroundColor: type.toLowerCase() == "error"
        ? const Color.fromARGB(255, 240, 39, 24)
        : const Color.fromARGB(255, 9, 104, 0),
    behavior: SnackBarBehavior.floating,
  );
}
