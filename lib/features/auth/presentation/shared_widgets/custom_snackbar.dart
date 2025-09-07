import 'package:flutter/material.dart';

SnackBar customSnackbar({required String message, required String type}) {
  return SnackBar(
    margin: EdgeInsets.symmetric(horizontal: 40),
    content: Text(message),
    backgroundColor: type.toLowerCase() == "error"
        ? const Color.fromARGB(255, 240, 39, 24)
        : const Color.fromARGB(255, 22, 255, 1),
    behavior: SnackBarBehavior.floating,
  );
}
