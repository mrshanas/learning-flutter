import 'package:flutter/material.dart';

Color cardColor = Color(0xFF1D1E33);
Color bottomCardColor = Color(0xFFEB1555);

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: const Icon(
          Icons.menu,
        ),
        title: const Text(
          'BMI Calculator',
        ),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: ReusableCard(
                  colour: cardColor,
                ),
              ),
              Expanded(
                child: ReusableCard(
                  colour: cardColor,
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: ReusableCard(
                  colour: cardColor,
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: ReusableCard(
                  colour: cardColor,
                ),
              ),
              Expanded(
                child: ReusableCard(
                  colour: cardColor,
                ),
              ),
            ],
          ),
          Expanded(
              child: ReusableCard(
            cardMargin: EdgeInsets.all(2.0),
            colour: bottomCardColor,
            height: 80.0,
          ))
        ],
      ),
    );
  }
}

class ReusableCard extends StatefulWidget {
  ReusableCard(
      {Key? key,
      required this.colour,
      this.height = 200.0,
      this.cardMargin = const EdgeInsets.all(8.0)})
      : super(key: key);

  final Color colour;
  double height;
  EdgeInsets cardMargin;

  @override
  State<ReusableCard> createState() => _ReusableCardState();
}

class _ReusableCardState extends State<ReusableCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: widget.height,
      margin: widget.cardMargin,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4.0),
        color: widget.colour,
      ),
    );
  }
}
