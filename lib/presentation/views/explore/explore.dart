import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:social_media_ui/configs/front_end.dart';
import 'package:social_media_ui/presentation/views/explore/layout/body.dart';

import 'layout/widgets/custom_Bottom_navigation_bar.dart';
import 'layout/widgets/custom_floating_action_button.dart';

class ExploreView extends StatelessWidget {
  const ExploreView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        extendBody: true,
        body: ExploreViewBody(),
        floatingActionButton: CustomFloatingActionButton(),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: CustomBottomNavigationBar());
  }
}
