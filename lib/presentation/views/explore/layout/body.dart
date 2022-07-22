import 'package:flutter/material.dart';
import 'package:social_media_ui/configs/front_end.dart';

import 'widgets/explore_app_bar.dart';
import 'widgets/stories_row.dart';
import 'widgets/user_post_card.dart';

class ExploreViewBody extends StatelessWidget {
  const ExploreViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: FrontEndConfigs.kWhiteColor,
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: const [
            ExploreViewAppBar(),
            SizedBox(
              height: 44,
            ),
            StoriesRow(),
            SizedBox(
              height: 29,
            ),
            UserPostCard(
                userImage: "assets/images/posting_user_1.png",
                name: "Raashi hegde",
                userName: "@raash_09",
                postedImage: "assets/images/user_1_posted_image.png",
                likes: 122,
                comments: 10),
            SizedBox(
              height: 17,
            ),
            UserPostCard(
                userImage: "assets/images/posting_user_2.png",
                name: "Prabhas Raju",
                userName: " @Praba_01",
                postedImage: "assets/images/user_2_posted_image.png",
                likes: 122,
                comments: 10),
          ],
        ),
      ),
    );
  }
}
