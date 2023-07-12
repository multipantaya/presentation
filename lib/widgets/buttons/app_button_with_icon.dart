
import 'package:flutter/material.dart';
import 'package:presentation/constants/decoration.dart';
import 'package:presentation/presentation.dart';

class AppButtonWithIcon extends StatelessWidget {
  const AppButtonWithIcon(
      {Key? key,
      required this.name,
      this.fontSize = 20,
      this.onPressed,
      this.textAlign = TextAlign.center,
      this.radius = 10.0, this.textStyle, this.backgroundColor, required this.icon})
      : super(key: key);

  final String name;
  final double fontSize;
  final void Function()? onPressed;
  final TextAlign textAlign;
  final double radius;
  final TextStyle? textStyle;
  final Color? backgroundColor;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          Expanded(
            child: SizedBox(
              height: ConstantsDecoration().heightButton,
              child: ElevatedButton.icon(
                onPressed: onPressed == null
                  ? null
                  : () async {
                      onPressed!();
                    },
                icon: Icon(icon),
                label: Text(
                  name,
                  textAlign: textAlign,
                  style: textStyle ?? AppTheme.textStyles.white16Bold.copyWith(fontSize: fontSize)
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: backgroundColor ?? AppTheme.colors.primaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(radius),
                  ),
                ),
              )
            ),
          ),
        ],
      ),
    );
  }
}