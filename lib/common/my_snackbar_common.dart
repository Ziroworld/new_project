import 'package:flutter/material.dart';

showMySnackBar(
  BuildContext context,
  String message,
  Color? color,
) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(message),
      backgroundColor: color ?? const Color.fromARGB(255, 19, 38, 94),
      duration: const Duration(seconds: 3),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      behavior: SnackBarBehavior.floating,
    ),
  );
}
