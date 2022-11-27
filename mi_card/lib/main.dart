import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            // ignore: prefer_const_constructors
            CircleAvatar(
              backgroundImage: const AssetImage('images/spiderman.jpg'),
              radius: 50.0,
            ),
            // ignore: prefer_const_constructors
            Text(
              'Peter Parker',
              // ignore: prefer_const_constructors
              style: TextStyle(
                fontFamily: 'Dank Mono',
                fontSize: 30,
                color: Colors.white,
              ),
            ),
            // ignore: prefer_const_constructors
            Text(
              'Super Hero',
              // ignore: prefer_const_constructors
              style: TextStyle(
                color: Colors.white,
                decoration: TextDecoration.underline,
                fontSize: 20,
                letterSpacing: 5,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
