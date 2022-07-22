import 'package:social_media_ui/presentation/views/chat/layout/models/message_model.dart';

class MessagesList {
  List<MessageModel> allMessagesList = [
    MessageModel(
        text: "Hello Doctor ! How are You ?",
        date: DateTime.now().subtract(Duration(minutes: 6)),
        isSentByMe: false),
    MessageModel(
        text: "I’m good, Thanks.",
        date: DateTime.now().subtract(Duration(minutes: 5)),
        isSentByMe: true),
    MessageModel(
        text: "When will my Reports come.",
        date: DateTime.now().subtract(Duration(minutes: 4)),
        isSentByMe: false),
    MessageModel(
        text: "By Wednesday, it will.",
        date: DateTime.now().subtract(Duration(minutes: 3)),
        isSentByMe: true),
    MessageModel(
        text: "What about medicines.",
        date: DateTime.now().subtract(Duration(minutes: 2)),
        isSentByMe: false),
    MessageModel(
        text: "It will cost 5000 Rs.",
        date: DateTime.now().subtract(Duration(minutes: 1)),
        isSentByMe: true),
  ];
}
