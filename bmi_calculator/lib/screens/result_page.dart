import 'package:flutter/material.dart';

import 'package:bmi_calculator/models/constants.dart';
import 'package:bmi_calculator/components/reusable_card.dart';

class ResultsPage extends StatefulWidget {
  String value;
  Map<String, String> result;

  ResultsPage({Key? key, required this.value, required this.result})
      : super(key: key);

  @override
  State<ResultsPage> createState() => _ResultsPageState();
}

class _ResultsPageState extends State<ResultsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: kAppBarBgColor,
        title: const Text(
          'BMI Calculator',
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 18.0),
            child: Text(
              'Your Result',
              style: TextStyle(
                fontSize: 35.0,
              ),
            ),
          ),
          // Results Card
          Expanded(
            flex: 7,
            child: ReusableCard(
              colour: kActiveCardColor,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 18.0),
                    child: Text(
                      widget.result['status'].toString(),
                      style: TextStyle(
                        color: kSuccess,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 18.0),
                    child: Text(
                      widget.value,
                      style: TextStyle(
                        fontSize: 100.0,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0),
                    child: Text(
                      widget.result['remarks'].toString(),
                      style: TextStyle(
                        fontSize: 30.0,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: ReusableCard(
                cardMargin: EdgeInsets.all(2.0),
                colour: kBottomBtnColor,
                height: 80.0,
                child: Center(
                  child: Text(
                    'Re-Calculate BMI',
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
