import 'package:flutter/material.dart';

import '../../../../elements/Text_widget.dart';

class CustomFlatButton extends StatelessWidget {
  const CustomFlatButton(
      {Key? key,
      required this.text,
      required this.buttonColor,
      required this.shadowColor,
      this.shadowSpreadRadius = 0,
      required this.buttonTextColor, required this.onPressed})
      : super(key: key);
  final String text;
  final Color buttonColor;
  final Color buttonTextColor;
  final Color shadowColor;
  final double shadowSpreadRadius;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color: shadowColor,
          blurRadius: 20,
          spreadRadius: shadowSpreadRadius,
          offset: const Offset(0, 10),
        )
      ]),
      child: FlatButton(
          height: 40,
          minWidth: 120,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          color: buttonColor,
          onPressed: onPressed,
          child: TextWidget(
            text: text,
            fontSize: 15,
            fontWeight: FontWeight.w400,
            textColor: buttonTextColor,
          )),
    );
  }
}
