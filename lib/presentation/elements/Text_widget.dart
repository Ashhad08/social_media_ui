import 'package:flutter/material.dart';

import '../../configs/front_end.dart';

class TextWidget extends StatelessWidget {
  final String text;
  final double fontSize;
  final FontWeight fontWeight;
  final Color? textColor;
  final TextAlign? align;

  const TextWidget({
    Key? key,
    required this.text,
    required this.fontSize,
    required this.fontWeight,
    this.textColor = FrontEndConfigs.kBlackColor,
    this.align = TextAlign.center,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontFamily: "poppins",
          fontSize: fontSize, fontWeight: fontWeight, color: textColor),
      textAlign: align,
    );
  }
}
