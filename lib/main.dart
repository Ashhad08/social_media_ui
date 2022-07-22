import 'package:flutter/material.dart';
import 'package:social_media_ui/presentation/views/chat/chat.dart';
import 'package:social_media_ui/presentation/views/explore/explore.dart';
import 'package:social_media_ui/presentation/views/user_profile/user_profile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: UserProfileView(),
    );
  }
}
