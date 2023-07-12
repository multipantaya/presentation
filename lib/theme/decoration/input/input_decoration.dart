import 'package:flutter/material.dart';
import 'package:presentation/theme/color/theme_colors.dart';

class IDecoration {
  InputDecoration customInputDecoration = InputDecoration(
    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10.0),
      borderSide: BorderSide(color: ThemeColors().white),
    ),
    border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10.0),
        borderSide: BorderSide(color: ThemeColors().primaryColor)),
    enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10.0),
        borderSide: BorderSide(color: ThemeColors().primaryColor)),
  );
}
