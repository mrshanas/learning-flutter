// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

import 'package:bmi_calculator/screens/result_page.dart';
import 'package:bmi_calculator/models/constants.dart';
import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:bmi_calculator/components/button.dart';
import 'package:bmi_calculator/models/bmi.dart';

enum Gender { male, female }

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  double currentSliderValue = 10.0;
  Gender selectedGender = Gender.male;
  int weight = 74;
  int age = 19;

  void setGender(Gender gender) {
    setState(() {
      selectedGender = gender;
    });
  }

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
          Row(
            children: [
              // male & female icons
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    setGender(Gender.male);
                  },
                  child: ReusableCard(
                    colour: kActiveCardColor,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.male,
                          size: 60.0,
                          color: selectedGender == Gender.male
                              ? Colors.white
                              : kInactiveCardColor,
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          'MALE',
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            color: selectedGender == Gender.male
                                ? Colors.white
                                : kInactiveCardColor,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    setGender(Gender.female);
                  },
                  child: ReusableCard(
                    colour: kActiveCardColor,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.female,
                          size: 60.0,
                          color: selectedGender == Gender.female
                              ? Colors.white
                              : kInactiveCardColor,
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          'FEMALE',
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            color: selectedGender == Gender.female
                                ? Colors.white
                                : kInactiveCardColor,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          // slider
          Row(
            children: [
              Expanded(
                child: ReusableCard(
                  colour: kActiveCardColor,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: Text(
                          'HEIGHT',
                          style: TextStyle(
                            fontSize: 18.0,
                            color: kInactiveCardColor,
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          Text(
                            currentSliderValue.toStringAsFixed(0),
                            style: TextStyle(
                              fontSize: 40.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'cm',
                            style: TextStyle(
                              fontSize: 18.0,
                              color: kInactiveCardColor,
                            ),
                          )
                        ],
                      ),
                      SliderTheme(
                        data: SliderThemeData(
                          activeTrackColor: Colors.white,
                          thumbColor: kBottomBtnColor,
                          inactiveTrackColor: kInactiveTrackColor,
                          overlayColor: Color(0x29E01958),
                        ),
                        child: Slider(
                            value: currentSliderValue,
                            min: 1,
                            max: 300,
                            onChanged: (double value) {
                              setState(() {
                                currentSliderValue = value;
                              });
                            }),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: ReusableCard(
                  colour: kActiveCardColor,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 8.0),
                        child: Text(
                          'WEIGHT',
                          style: TextStyle(
                            fontSize: 18.0,
                            color: kInactiveCardColor,
                          ),
                        ),
                      ),
                      Text(
                        weight.toString(),
                        style: TextStyle(
                          fontSize: 40.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        children: [
                          ReusableIconButton(
                            onPressed: () {
                              setState(() {
                                weight--;
                              });
                            },
                            iconChild: Icons.remove,
                          ),
                          ReusableIconButton(
                            onPressed: () {
                              setState(() {
                                weight++;
                              });
                            },
                            iconChild: Icons.add,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: ReusableCard(
                  colour: kActiveCardColor,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 8.0),
                        child: Text(
                          'AGE',
                          style: TextStyle(
                            fontSize: 18.0,
                            color: kInactiveCardColor,
                          ),
                        ),
                      ),
                      Text(
                        age.toString(),
                        style: TextStyle(
                          fontSize: 40.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        children: [
                          ReusableIconButton(
                            onPressed: () {
                              setState(() {
                                age--;
                              });
                            },
                            iconChild: Icons.remove,
                          ),
                          ReusableIconButton(
                            onPressed: () {
                              setState(() {
                                age++;
                              });
                            },
                            iconChild: Icons.add,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: GestureDetector(
              onTap: () {
                BMI bmi = BMI(weight: weight, height: currentSliderValue / 100);

                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) =>
                      ResultsPage(
                        value: bmi.getBMI(),
                        result: bmi.getResult(),
                      ),
                ));
              },
              child: ReusableCard(
                cardMargin: EdgeInsets.all(2.0),
                colour: kBottomBtnColor,
                height: 80.0,
                child: Center(
                  child: Text(
                    'Calculate BMI',
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
