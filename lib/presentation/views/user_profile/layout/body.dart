import 'package:flutter/material.dart';

import 'widgets/background_image_container.dart';
import '../../../elements/profile_image_avatar.dart';
import 'widgets/profile_info_container.dart';
import 'widgets/uploaded_images_container.dart';

class UserProfileViewBody extends StatefulWidget {
  const UserProfileViewBody({Key? key}) : super(key: key);

  @override
  State<UserProfileViewBody> createState() => _UserProfileViewBodyState();
}

class _UserProfileViewBodyState extends State<UserProfileViewBody>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController tabsController = TabController(length: 3, vsync: this);
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: SizedBox(
      height: size.height,
      width: size.width,
      child: Stack(
        children: [
          const BackgroundImageContainer(),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: SizedBox(
              height: size.height * 0.8,
              width: size.width,
              child: Stack(
                children: [
                  Positioned(
                      bottom: 0,
                      left: 0,
                      right: 0,
                      child:
                          ProfileInfoContainer(tabsController: tabsController)),
                  const Positioned(
                      top: 0,
                      left: 0,
                      right: 0,
                      child: ProfileImageAvatar(
                        userImage: "assets/images/main_user.png",
                        avatarHeightWidth: 90,
                        showStoryBorder: false,
                        whiteBorderWidth: 5,
                        showAddButton: false,
                        addName: false,
                      )),
                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child:
                        UploadedImagesContainer(tabsController: tabsController),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    ));
  }
}
