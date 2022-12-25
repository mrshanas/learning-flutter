import 'package:flutter/material.dart';
import 'package:bmi_calculator/models/constants.dart';

class ReusableIconButton extends StatefulWidget {
  VoidCallback onPressed;
  IconData iconChild;

  ReusableIconButton({
    Key? key,
    required this.onPressed,
    required this.iconChild,
  }) : super(key: key);

  @override
  State<ReusableIconButton> createState() => _ReusableIconButtonState();
}

class _ReusableIconButtonState extends State<ReusableIconButton> {
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: widget.onPressed,
      fillColor: kIconBtnBackgroundColor,
      elevation: 8.0,
      padding: EdgeInsets.all(18.0),
      shape: CircleBorder(),
      child: Icon(
        widget.iconChild,
        size: 40.0,
      ),
    );
  }
}
