import 'package:flutter/material.dart';
import 'package:social_media_ui/presentation/views/chat/chat.dart';

import '../../../../../configs/front_end.dart';
import '../../../../elements/Text_widget.dart';
import 'custom_flat_button.dart';

class ProfileInfoContainer extends StatelessWidget {
  const ProfileInfoContainer({
    Key? key,
    required TabController tabsController,
  })  : _tabsController = tabsController,
        super(key: key);

  final TabController _tabsController;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.75,
      width: size.width,
      padding: const EdgeInsets.only(top: 9),
      decoration: const BoxDecoration(
          color: FrontEndConfigs.kPrimaryColor,
          borderRadius: BorderRadius.vertical(top: Radius.circular(50))),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 49),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: const [
                    TextWidget(
                      text: "1k",
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                    ),
                    TextWidget(
                      text: "Followers",
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                  ],
                ),
                Column(
                  children: const [
                    TextWidget(
                      text: "232",
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                    ),
                    TextWidget(
                      text: "Followings",
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 17,
          ),
          const TextWidget(
              text: "@theprathyaksh",
              fontSize: 15,
              fontWeight: FontWeight.w700),
          const SizedBox(
            height: 7,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 50),
            child: TextWidget(
              text:
                  "My name is Prathyaksh. I like dancing in the rain and travelling all around the world.",
              fontSize: 10,
              fontWeight: FontWeight.w400,
              textColor: FrontEndConfigs.kSubTextColor,
            ),
          ),
          const SizedBox(
            height: 18,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomFlatButton(
                text: "Follow",
                buttonColor: FrontEndConfigs.kSecondaryColor,
                shadowColor: FrontEndConfigs.kSecondaryColor.withOpacity(0.3),
                buttonTextColor: FrontEndConfigs.kWhiteColor,
                onPressed: () {},
              ),
              const SizedBox(
                width: 14,
              ),
              CustomFlatButton(
                text: "Message",
                buttonColor: FrontEndConfigs.kWhiteColor,
                shadowColor: FrontEndConfigs.kBlackColor.withOpacity(0.2),
                shadowSpreadRadius: -5,
                buttonTextColor: FrontEndConfigs.kBlackColor,
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ChatView()));
                },
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          TabBar(
              controller: _tabsController,
              isScrollable: true,
              indicatorWeight: 3,
              indicatorColor: FrontEndConfigs.kSubTextColor,
              indicatorSize: TabBarIndicatorSize.label,
              tabs: const [
                TextWidget(
                    text: "All", fontSize: 13, fontWeight: FontWeight.w400),
                TextWidget(
                    text: "Photos", fontSize: 13, fontWeight: FontWeight.w400),
                TextWidget(
                    text: "Videos", fontSize: 13, fontWeight: FontWeight.w400),
              ])
        ],
      ),
    );
  }
}
