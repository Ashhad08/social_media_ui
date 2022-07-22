import 'package:flutter/material.dart';

import '../../../../elements/Text_widget.dart';

class ChatHeader extends StatelessWidget {
  const ChatHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 13, right: 15),
      child: Row(
        children: [
          Container(
            height: 44,
            width: 44,
            decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: AssetImage("assets/images/chating_user.png"))),
          ),
          const SizedBox(
            width: 10,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              TextWidget(
                text: "Nancy Baarb",
                fontSize: 15,
                fontWeight: FontWeight.w600,
              ),
              TextWidget(
                text: "Last Seen 11:44 AM",
                fontSize: 11,
                fontWeight: FontWeight.w300,
              )
            ],
          ),
          const Spacer(),
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              height: 30,
              width: 30,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: AssetImage("assets/icons/cancle.png"))),
            ),
          )
        ],
      ),
    );
  }
}
