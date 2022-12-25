import 'package:flutter/material.dart';
import 'screens/input_page.dart';
import 'models/constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        primaryColor: kPrimaryBackgroundColor,
        scaffoldBackgroundColor: kPrimaryBackgroundColor,
      ),
      // title: 'BMI Calculator',
      home: const InputPage(),
    );
  }
}
