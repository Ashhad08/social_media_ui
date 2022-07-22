import 'package:flutter/material.dart';
import 'package:social_media_ui/presentation/views/explore/explore.dart';

import '../../../../elements/custom_icon_button.dart';

class BackgroundImageContainer extends StatelessWidget {
  const BackgroundImageContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
        padding: const EdgeInsets.only(left: 33, top: 30, right: 31),
        alignment: Alignment.topCenter,
        height: size.height * 0.35,
        width: size.width,
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage("assets/images/home_background.png"),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomIconButton(
              iconPath: "assets/icons/arrow_back.png",
              onPressed: () {},
            ),
            CustomIconButton(
              iconPath: "assets/icons/home.png",
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ExploreView()));
              },
            )
          ],
        ));
  }
}
