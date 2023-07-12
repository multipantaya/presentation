import 'package:flutter/material.dart';

class IconButtonCustom extends StatelessWidget {
  final IconData icon;
  final double? size;
  final Color? color;
  final VoidCallback? onPressed;
  final double splashRadius;
  const IconButtonCustom({super.key, required this.icon, this.size, this.color, this.onPressed, this.splashRadius = 18});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed, 
      icon: Icon(icon),
      visualDensity: VisualDensity.compact,
      splashRadius: splashRadius,
      color: color,
      alignment: Alignment.center,
      iconSize: size,
    );
  }
}