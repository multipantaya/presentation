import 'package:flutter/material.dart';

class MPYShadows {
  final List<Shadow>? blackShadows = [
    const Shadow(color: Colors.black, blurRadius: 2)
  ];

  final List<BoxShadow>? white10 = [
    const BoxShadow(
      color: Color.fromRGBO(255, 255, 255, 0.25),
      blurRadius: 10.0,
      blurStyle: BlurStyle.outer,
      spreadRadius: 0,
      offset: Offset(0, 1),
    ),
  ];

  // final List<BoxShadow>? blackB5 = [
  //   const BoxShadow(
  //     color: Color.fromRGBO(0, 0, 0, 0.1),
  //     blurRadius: 5,
  //     blurStyle: BlurStyle.outer,
  //     spreadRadius: 0,
  //     offset: Offset(0, 1),
  //   ),
  // ];

  // final List<BoxShadow>? blackB2 = [
  //   const BoxShadow(
  //     color: Color.fromRGBO(0, 0, 0, 0.25),
  //     blurRadius: 2,
  //     blurStyle: BlurStyle.outer,
  //     spreadRadius: 0,
  //     offset: Offset(0, 1),
  //   ),
  // ];

  // final List<BoxShadow> blackB4 = [
  //   const BoxShadow(
  //     blurRadius: 4,
  //     blurStyle: BlurStyle.outer,
  //     offset: Offset(0, 0),
  //     color: Color.fromRGBO(0, 0, 0, 0.25),
  //   )
  // ];
}
