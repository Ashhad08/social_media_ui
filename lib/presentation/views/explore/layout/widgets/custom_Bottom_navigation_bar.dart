import 'dart:ui';

import 'package:flutter/material.dart';

import '../../../../../configs/front_end.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.transparent,
      shape: const CircularNotchedRectangle(),
      clipBehavior: Clip.antiAlias,
      notchMargin: 5,
      child: Container(
        height: 60,
        color: FrontEndConfigs.kChatColor.withOpacity(0.6),
        child: ClipRRect(
          child: Stack(
            alignment: Alignment.center,
            children: [
              BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 50, sigmaY: 50),
                child: Container(),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Row(
                  children: [
                    Image.asset(
                      "assets/icons/home.png",
                      height: 28,
                      width: 30,
                      color: FrontEndConfigs.kWhiteColor,
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                    Image.asset(
                      "assets/icons/messages.png",
                      height: 28,
                      width: 30,
                      color: FrontEndConfigs.kWhiteColor,
                    ),
                    const Spacer(),
                    Image.asset(
                      "assets/icons/profile.png",
                      height: 30,
                      width: 30,
                      color: FrontEndConfigs.kWhiteColor,
                    ),
                    const SizedBox(
                      width: 28,
                    ),
                    Image.asset(
                      "assets/icons/notification_badged.png",
                      height: 28,
                      width: 30,
                      color: FrontEndConfigs.kWhiteColor,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
