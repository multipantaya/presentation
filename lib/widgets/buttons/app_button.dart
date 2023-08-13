import 'package:flutter/material.dart';
import 'package:presentation/presentation.dart';

class AppButton extends StatelessWidget {
  const AppButton(
      {Key? key,
      required this.name,
      this.fontSize = 20,
      this.onPressed,
      this.textAlign = TextAlign.center,
      this.radius = 10.0, this.textStyle, this.backgroundColor})
      : super(key: key);

  final String name;
  final double fontSize;
  final void Function()? onPressed;
  final TextAlign textAlign;
  final double radius;
  final TextStyle? textStyle;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          Expanded(
            child: SizedBox(
              height: 30,
              child: ElevatedButton(
                onPressed: onPressed == null
                    ? null
                    : () async {
                        onPressed!();
                      },
                style: ElevatedButton.styleFrom(
                    backgroundColor: backgroundColor ?? AppTheme.colors.primaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(radius),
                    ),
                    textStyle: textStyle ??  AppTheme.textStyles.white16Bold),
                child: Text(name,
                    textAlign: textAlign,
                    style: textStyle ?? AppTheme.textStyles.white16Bold.copyWith(fontSize: fontSize)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}