import 'package:flutter/material.dart';
import 'package:presentation/presentation.dart';

class AppButtonMini extends StatelessWidget {
  final Function? onPressed;
  final String text;
  final Color? primary;
  final TextAlign? textAlign;
  final VisualDensity? visualDensity;
  const AppButtonMini({
    Key? key,
    required this.onPressed,
    required this.text,
    this.primary,
    this.textAlign, this.visualDensity,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          backgroundColor: primary ?? AppTheme.colors.primaryColor,
          visualDensity: visualDensity,
          elevation: 0,
          shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
      onPressed: onPressed == null ? null : () => onPressed?.call(),
      child: Text(
        text,
        textAlign: textAlign,
        style: AppTheme.textStyles.white14F500,
      ),
    );
  }
}
