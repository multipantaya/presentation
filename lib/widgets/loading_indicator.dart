import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:presentation/presentation.dart';

class LoadingIndicator extends StatefulWidget {
  const LoadingIndicator(
      {Key? key,
      this.backgroundColor,
      this.color,
      this.strokeWidth = 4.0,
      this.alignment = Alignment.center,
      this.height})
      : super(key: key);

  final Color? backgroundColor;
  final Color? color;
  final double strokeWidth;
  final double? height;
  final Alignment alignment;

  @override
  LoadingIndicatorState createState() => LoadingIndicatorState();
}

class LoadingIndicatorState extends State<LoadingIndicator> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Container(
      width: width,
      height:widget.height ?? height,
      color: widget.backgroundColor ?? AppTheme.colors.white.withOpacity(0.5),
      child: Center(
        child: SpinKitDoubleBounce(color: AppTheme.colors.background,),
      ),
    );
  }
}
