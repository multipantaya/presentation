import 'package:flutter/material.dart';
import 'package:presentation/presentation.dart';

class IconButtonCustom extends StatelessWidget {
  final void Function()? onPressed;
  final IconData icon;
  final Color? iconColor;
  const IconButtonCustom({super.key, required this.onPressed, required this.icon, this.iconColor});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: Icon(icon),
      color: iconColor ?? AppTheme.colors.primaryColor,
      splashRadius: 20,
    );
  }
}