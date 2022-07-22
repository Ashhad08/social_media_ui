import 'package:flutter/material.dart';

import 'layout/body.dart';
class ChatView extends StatelessWidget {
  const ChatView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ChatViewBody()
    );
  }
}
