import 'package:bmi_calculator/bmi/Page/bmi_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: BmiScreen(),
      debugShowCheckedModeBanner: false,
    );
  }

}