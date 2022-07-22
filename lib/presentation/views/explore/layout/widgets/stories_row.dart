import 'package:flutter/material.dart';

import '../../../../elements/profile_image_avatar.dart';

class StoriesRow extends StatelessWidget {
  const StoriesRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 32),
      child: Row(
        children: const [
          ProfileImageAvatar(
            userImage: "assets/images/main_user.png",
            avatarHeightWidth: 60,
            showStoryBorder: true,
            whiteBorderWidth: 3,
            showAddButton: true,
            addName: true,
            friendName: "You",
          ),
          SizedBox(
            width: 19,
          ),
          ProfileImageAvatar(
            userImage: "assets/images/user_friend_1.png",
            avatarHeightWidth: 60,
            showStoryBorder: true,
            whiteBorderWidth: 3,
            showAddButton: false,
            addName: true,
            friendName: "Cathe",
          ),
          SizedBox(
            width: 19,
          ),
          ProfileImageAvatar(
            userImage: "assets/images/user_friend_2.png",
            avatarHeightWidth: 60,
            showStoryBorder: true,
            whiteBorderWidth: 3,
            showAddButton: false,
            addName: true,
            friendName: "Charles",
          ),
          SizedBox(
            width: 19,
          ),
          ProfileImageAvatar(
            userImage: "assets/images/user_friend_3.png",
            avatarHeightWidth: 60,
            showStoryBorder: true,
            whiteBorderWidth: 3,
            showAddButton: false,
            addName: true,
            friendName: "harry",
          ),
          SizedBox(
            width: 19,
          ),
        ],
      ),
    );
  }
}
