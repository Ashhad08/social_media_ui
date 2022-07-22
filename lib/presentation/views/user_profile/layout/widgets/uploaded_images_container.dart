import 'package:flutter/material.dart';

import '../../../../../configs/front_end.dart';

class UploadedImagesContainer extends StatelessWidget {
  const UploadedImagesContainer({
    Key? key,
    required TabController tabsController,
  })  : _tabsController = tabsController,
        super(key: key);

  final TabController _tabsController;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
        height: size.height * 0.43,
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: FrontEndConfigs.kWhiteColor,
            borderRadius: const BorderRadius.vertical(top: Radius.circular(50)),
            boxShadow: [
              BoxShadow(
                  color: FrontEndConfigs.kBlackColor.withOpacity(0.2),
                  offset: const Offset(0, -4),
                  blurRadius: 20)
            ]),
        child: TabBarView(
          physics: const BouncingScrollPhysics(),
          controller: _tabsController,
          children: [
            _buildSingleTabBarView(),
            _buildSingleTabBarView(),
            _buildSingleTabBarView(),
          ],
        ));
  }

  Widget _buildSingleTabBarView() {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                  //flex: 5,
                  child: Image.asset(
                "assets/images/user_upload_1.png",
              )),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                // flex: 3,
                child: Column(
                  children: [
                    Image.asset("assets/images/user_upload_2.png"),
                    const SizedBox(
                      height: 10,
                    ),
                    Image.asset("assets/images/user_upload_3.png"),
                  ],
                ),
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Expanded(child: Image.asset("assets/images/user_upload_4.png")),
              const SizedBox(
                width: 10,
              ),
              Expanded(child: Image.asset("assets/images/user_upload_5.png")),
              const SizedBox(
                width: 10,
              ),
              Expanded(child: Image.asset("assets/images/user_upload_6.png")),
            ],
          )
        ],
      ),
    );
  }
}
