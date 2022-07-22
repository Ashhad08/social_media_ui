import 'package:flutter/material.dart';

import '../../configs/front_end.dart';

class CustomIconButton extends StatelessWidget {
  const CustomIconButton({
    Key? key,
    required this.iconPath,
    this.buttonColor = FrontEndConfigs.kPrimaryColor,
    this.iconColor = FrontEndConfigs.kBlackColor, required this.onPressed,
  }) : super(key: key);
  final String iconPath;
  final Color buttonColor;
  final Color iconColor;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 44,
      width: 44,
      child: FlatButton(
          color: buttonColor,
          padding: const EdgeInsets.all(12),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
          onPressed: onPressed,
          child: Image.asset(
            iconPath,
            color: iconColor,
          )),
    );
  }
}
