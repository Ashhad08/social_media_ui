import 'package:flutter/material.dart';
import 'package:grouped_list/grouped_list.dart';

import '../lists/messages_list.dart';
import '../models/message_model.dart';
import 'message_bubble.dart';

class ChatMessagesArea extends StatelessWidget {
  const ChatMessagesArea({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GroupedListView<MessageModel, DateTime>(
      padding: const EdgeInsets.only(left: 10, right: 13),
      reverse: true,
      order: GroupedListOrder.DESC,
      groupHeaderBuilder: (MessageModel message) => const SizedBox(),
      groupBy: (element) =>
          DateTime(element.date.year, element.date.month, element.date.day),
      elements: MessagesList().allMessagesList,
      itemBuilder: (context, MessageModel messageModel) => MessageBubble(
          isSentByMe: messageModel.isSentByMe, message: messageModel.text),
    );
  }
}
