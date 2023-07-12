import 'package:flutter/material.dart';
import 'package:presentation/presentation.dart';

class AppButtonMini extends StatelessWidget {
  final void Function()? onPressed;
  final String text;
  final Color? primary;
  const AppButtonMini({
    Key? key,
    required this.onPressed,
    required this.text,
    this.primary,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: primary ?? AppTheme.colors.primaryColor,
        elevation: 0,
        shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
      ),
      onPressed: onPressed,
      child: Text(
        text,
        style: AppTheme.textStyles.white14F500,
      ),
    );
  }
}