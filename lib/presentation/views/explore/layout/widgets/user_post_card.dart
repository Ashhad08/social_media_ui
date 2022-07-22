import 'dart:ui';

import 'package:flutter/material.dart';

import '../../../../../configs/front_end.dart';
import '../../../../elements/Text_widget.dart';
import '../../../../elements/profile_image_avatar.dart';

class UserPostCard extends StatelessWidget {
  const UserPostCard({
    Key? key,
    required this.userImage,
    required this.name,
    required this.userName,
    required this.postedImage,
    required this.likes,
    required this.comments,
  }) : super(key: key);

  final String userImage;
  final String name;
  final String userName;
  final String postedImage;
  final int likes;
  final int comments;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: 338,
      width: size.width,
      margin: const EdgeInsets.symmetric(horizontal: 10),
      padding: const EdgeInsets.only(left: 8, top: 9, bottom: 24, right: 12),
      decoration: BoxDecoration(
          color: FrontEndConfigs.kPrimaryColor,
          borderRadius: BorderRadius.circular(40)),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 35 - 8.0),
            child: _buildUserInfoTile(),
          ),
          const SizedBox(
            height: 10,
          ),
          _buildPostImageCard(),
        ],
      ),
    );
  }

  Widget _buildPostImageCard() {
    return Container(
      height: 255,
      width: double.infinity,
      alignment: Alignment.bottomCenter,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          image: DecorationImage(
              fit: BoxFit.cover, image: AssetImage(postedImage))),
      child: _buildPostInfoGlassTile(),
    );
  }

  Widget _buildPostInfoGlassTile() {
    return ClipRRect(
      borderRadius: const BorderRadius.vertical(bottom: Radius.circular(30)),
      child: Container(
        height: 47,
        padding: const EdgeInsets.only(left: 31, right: 14),
        color: Colors.black.withOpacity(0.4),
        child: Stack(
          alignment: Alignment.center,
          children: [
            BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
              child: Container(),
            ),
            _buildPostInfoRow(),
          ],
        ),
      ),
    );
  }

  Widget _buildPostInfoRow() {
    return Row(
      children: [
        Image.asset(
          "assets/icons/comments.png",
          height: 21,
          width: 23,
        ),
        const SizedBox(
          width: 5,
        ),
        TextWidget(
          text: "$comments",
          fontSize: 13,
          fontWeight: FontWeight.w600,
          textColor: FrontEndConfigs.kWhiteColor,
        ),
        const SizedBox(
          width: 5,
        ),
        Image.asset(
          "assets/icons/heart.png",
          height: 29,
          width: 29,
        ),
        const SizedBox(
          width: 5,
        ),
        TextWidget(
          text: "$likes",
          fontSize: 13,
          fontWeight: FontWeight.w600,
          textColor: FrontEndConfigs.kWhiteColor,
        ),
        const Spacer(),
        Image.asset(
          "assets/icons/notification_send.png",
          height: 21,
          width: 21,
        ),
        const SizedBox(
          width: 18,
        ),
        Image.asset(
          "assets/icons/download.png",
          height: 20,
          width: 24,
        ),
      ],
    );
  }

  Widget _buildUserInfoTile() {
    return Row(
      children: [
        ProfileImageAvatar(
            userImage: userImage,
            avatarHeightWidth: 40,
            showStoryBorder: false,
            whiteBorderWidth: 2,
            showAddButton: false,
            addName: false),
        const SizedBox(
          width: 10,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            TextWidget(
              text: name,
              fontSize: 13,
              fontWeight: FontWeight.w600,
            ),
            TextWidget(
              text: userName,
              fontSize: 11,
              fontWeight: FontWeight.w300,
            ),
          ],
        ),
      ],
    );
  }
}
