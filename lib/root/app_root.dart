import 'package:flutter/material.dart';
import 'package:flutter_application_20/sceen/image_screen.dart';

class Approot extends StatelessWidget {
  const Approot({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ImageScreen(),
    );

  }
}