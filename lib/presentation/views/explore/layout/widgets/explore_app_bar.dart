import 'package:flutter/material.dart';

import '../../../../elements/Text_widget.dart';
import '../../../../elements/custom_icon_button.dart';

class ExploreViewAppBar extends StatelessWidget {
  const ExploreViewAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 13, right: 16, top: 50),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomIconButton(
            iconPath: "assets/icons/camera.png",
            onPressed: () {},
          ),
          const TextWidget(
              text: "Explore", fontSize: 20, fontWeight: FontWeight.w600),
          CustomIconButton(
            iconPath: "assets/icons/notification_badged.png",
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
