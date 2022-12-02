import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int leftDiceNumber = 1, rightDiceNumber = 1;

  void changeDiceNumber() {
      setState(() {
        leftDiceNumber =  Random().nextInt(6) + 1;
        rightDiceNumber = Random().nextInt(6) + 1;
      });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dice game',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red.shade500,
          centerTitle: true,
          title: Text('Dicee'),
        ),
        backgroundColor: Colors.red.shade500,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(
                    child:  TextButton(child: Image.asset(
                      'images/dice$leftDiceNumber.png',
                    ),
                      onPressed: () {
                        changeDiceNumber();
                      },
                    ),
                  ),
                  const SizedBox(width: 20.0,),
                  Expanded(
                    child: TextButton(child: Image.asset('images/dice$rightDiceNumber.png'),
                      onPressed: () {
                       changeDiceNumber();
                      },),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}




