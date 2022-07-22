import 'package:flutter/material.dart';
import 'package:social_media_ui/presentation/views/explore/explore.dart';

import '../../../../../configs/front_end.dart';
import '../../../../elements/custom_icon_button.dart';

class ChatFooter extends StatelessWidget {
  const ChatFooter({
    Key? key,
    required this.onSubmit,
  }) : super(key: key);
  final Function(String) onSubmit;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 21, right: 13),
      child: Row(
        children: [
          CustomIconButton(
            iconPath: "assets/icons/camera.png",
            buttonColor: FrontEndConfigs.kChatColor,
            iconColor: FrontEndConfigs.kWhiteColor,
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const ExploreView()));
            },
          ),
          const SizedBox(
            width: 10,
          ),
          Expanded(
            child: Container(
              height: 44,
              alignment: Alignment.topCenter,
              child: TextField(
                onSubmitted: onSubmit,
                decoration: InputDecoration(
                    filled: true,
                    fillColor: FrontEndConfigs.kWhiteColor,
                    suffixIconConstraints: const BoxConstraints(maxWidth: 44),
                    suffixIcon: CustomIconButton(
                      iconPath: 'assets/icons/notification_send.png',
                      iconColor: FrontEndConfigs.kWhiteColor,
                      buttonColor: FrontEndConfigs.kChatColor,
                      onPressed: () {},
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide.none)),
              ),
            ),
          )
        ],
      ),
    );
  }

}
