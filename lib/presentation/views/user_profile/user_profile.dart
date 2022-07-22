import 'package:flutter/material.dart';
import 'package:social_media_ui/presentation/views/user_profile/layout/body.dart';

class UserProfileView extends StatelessWidget {
  const UserProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: UserProfileViewBody(),
    );
  }
}
