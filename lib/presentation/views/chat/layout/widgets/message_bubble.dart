import 'package:flutter/material.dart';

import '../../../../../configs/front_end.dart';
import '../../../../elements/Text_widget.dart';

class MessageBubble extends StatelessWidget {
  const MessageBubble(
      {Key? key, required this.message, required this.isSentByMe})
      : super(key: key);

  final String message;
  final bool isSentByMe;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: isSentByMe ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        padding: EdgeInsets.only(
            top: 12, bottom: 12, left: isSentByMe ? 14 : 6, right: 6),
        margin: const EdgeInsets.only(bottom: 14),
        decoration: BoxDecoration(
            color: isSentByMe
                ? FrontEndConfigs.kChatColor
                : FrontEndConfigs.kWhiteColor,
            borderRadius: isSentByMe
                ? const BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                    bottomLeft: Radius.circular(30),
                  )
                : const BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                  )),
        child: TextWidget(
            text: message,
            fontSize: 16,
            align: TextAlign.justify,
            textColor: isSentByMe
                ? FrontEndConfigs.kWhiteColor
                : FrontEndConfigs.kBlackColor,
            fontWeight: FontWeight.w400),
      ),
    );
  }
}
