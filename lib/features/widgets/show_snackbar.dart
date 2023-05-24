// ignore_for_file: non_constant_identifier_names

import 'package:api_calling/core/colors.dart';
import 'package:flutter/material.dart';

ShowSnackBarMessage(BuildContext context, String msg, String mode) {
  return ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      duration: const Duration(
        seconds: 2,
      ),
      content: Text(
        msg,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
          color:
              mode == "dark" ? Palette.primary_color : Palette.secondary_color,
        ),
      ),
      backgroundColor:
          mode == "dark" ? Palette.white_color : Palette.primary_color,
      behavior: SnackBarBehavior.floating,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ), // Optional: Set the duration for the SnackBar
    ),
  );
}
