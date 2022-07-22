import 'dart:ui';

import 'package:flutter/material.dart';

import '../../../../configs/front_end.dart';
import 'lists/messages_list.dart';
import 'models/message_model.dart';
import 'widgets/chatFooter.dart';
import 'widgets/chat_header.dart';
import 'widgets/chat_messages_area.dart';

class ChatViewBody extends StatefulWidget {
  const ChatViewBody({Key? key}) : super(key: key);

  @override
  State<ChatViewBody> createState() => _ChatViewBodyState();
}

class _ChatViewBodyState extends State<ChatViewBody> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SizedBox(
        height: size.height,
        width: size.width,
        child: Stack(
          children: [
            Container(
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage("assets/images/home_background.png"))),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                height: size.height * 0.9,
                width: size.width,
                decoration: BoxDecoration(
                    color: FrontEndConfigs.kWhiteColor.withOpacity(0.4),
                    borderRadius:
                        const BorderRadius.vertical(top: Radius.circular(50))),
                child: ClipRRect(
                  borderRadius:
                      const BorderRadius.vertical(top: Radius.circular(50)),
                  child: Stack(
                    children: [
                      BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 50, sigmaY: 50),
                        child: Container(),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 11, left: 10, right: 10, bottom: 17),
                        child: Container(
                          height: size.height * 0.9,
                          width: size.width,
                          padding: const EdgeInsets.only(top: 17, bottom: 20),
                          decoration: BoxDecoration(
                              color: FrontEndConfigs.kPrimaryColor,
                              borderRadius: BorderRadius.circular(45)),
                          child: Column(
                            children: [
                              const ChatHeader(),
                              const SizedBox(height: 40),
                              const Expanded(
                                child: ChatMessagesArea(),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              ChatFooter(
                                onSubmit: (text) {
                                  final message = MessageModel(
                                      text: text,
                                      date: DateTime.now(),
                                      isSentByMe: true);
                                  MessagesList().allMessagesList.add(message);
                                  print(MessagesList()
                                      .allMessagesList
                                      .length
                                      .toString());
                                  setState(() {});
                                },
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

// ListView(
// physics: BouncingScrollPhysics(),
// children: [
// _buildMessageBubble(
// false, "Hello Doctor ! How are You ?"),
// _buildMessageBubble(
// true, "I’m good, Thanks."),
// _buildMessageBubble(
// false, "When will my Reports come."),
// _buildMessageBubble(
// true, "By Wednesday, it will."),
// _buildMessageBubble(
// false, "What about medicines."),
// _buildMessageBubble(
// true, "It will cost 5000 Rs."),
// _buildMessageBubble(
// true, "It will cost 5000 Rs."),
// _buildMessageBubble(
// true, "It will cost 5000 Rs."),
// _buildMessageBubble(
// true, "It will cost 5000 Rs."),
// _buildMessageBubble(
// true, "It will cost 5000 Rs."),
// _buildMessageBubble(
// true, "It will cost 5000 Rs."),
// ],
// ),
