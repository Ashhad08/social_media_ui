import 'dart:ui';

import 'package:flutter/material.dart';

import '../../../../../configs/front_end.dart';

class CustomFloatingActionButton extends StatelessWidget {
  const CustomFloatingActionButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 68,
      width: 68,
      decoration: BoxDecoration(
        color: FrontEndConfigs.kWhiteColor.withOpacity(0.5),
        shape: BoxShape.circle,
        border: Border.all(
            color: FrontEndConfigs.kBlackColor.withOpacity(0.3), width: 1),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(100),
        child: Stack(
          alignment: Alignment.center,
          children: [
            BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
              child: Container(),
            ),
            Image.asset("assets/icons/FAB_add.png", height: 28, width: 28)
          ],
        ),
      ),
    );
  }
}
