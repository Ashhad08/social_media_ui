import 'package:flutter/material.dart';
import 'package:social_media_ui/presentation/elements/Text_widget.dart';

import '../../configs/front_end.dart';

class ProfileImageAvatar extends StatelessWidget {
  const ProfileImageAvatar({
    Key? key,
    required this.userImage,
    required this.avatarHeightWidth,
    required this.showStoryBorder,
    required this.whiteBorderWidth,
    required this.showAddButton,
    this.friendName = "",
    required this.addName,
  }) : super(key: key);
  final String userImage;
  final double avatarHeightWidth;
  final bool showStoryBorder;
  final double whiteBorderWidth;
  final bool showAddButton;
  final String friendName;
  final bool addName;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: avatarHeightWidth,
          width: avatarHeightWidth,
          padding: EdgeInsets.all(whiteBorderWidth),
          decoration: BoxDecoration(
            color: FrontEndConfigs.kWhiteColor,
            border: showStoryBorder
                ? Border.all(width: 3, color: FrontEndConfigs.kChatColor)
                : null,
            shape: BoxShape.circle,
          ),
          child: Center(
              child: Stack(
            alignment: Alignment.center,
            children: [
              Image.asset(userImage),
              showAddButton
                  ? Image.asset(
                      "assets/icons/add.png",
                      height: 22,
                      width: 22,
                    )
                  : const SizedBox(),
            ],
          )),
        ),
        addName
            ? TextWidget(
                text: friendName, fontSize: 12, fontWeight: FontWeight.w600)
            : const SizedBox()
      ],
    );
  }
}
