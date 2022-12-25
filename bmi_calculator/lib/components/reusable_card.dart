import 'package:flutter/material.dart';

class ReusableCard extends StatefulWidget {
  final Color colour;
  double height;
  EdgeInsets cardMargin;
  Widget child;

  ReusableCard(
      {Key? key,
      required this.colour,
      required this.child,
      this.height = 200.0,
      this.cardMargin = const EdgeInsets.all(8.0)})
      : super(key: key);

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
      child: widget.child,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4.0),
        color: widget.colour,
      ),
    );
  }
}
