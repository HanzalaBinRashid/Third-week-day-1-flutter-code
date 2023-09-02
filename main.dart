import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:my_first_app/grid_view.dart';
import 'package:my_first_app/profile_view.dart';
import 'package:my_first_app/text_Slider.dart';

//import 'dart:ui' show lerpDouble;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: Image.asset(
      //   'assets/images/avenger.jpg',
      //   fit: BoxFit.contain,
      //   width: 300,
      // ),
      home: Onboarding(),
    );
  }
}
