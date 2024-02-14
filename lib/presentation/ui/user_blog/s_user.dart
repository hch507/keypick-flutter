import 'package:flutter/material.dart';
import 'package:flutter_keypick/presentation/ui/common/show_logout_dialog.dart';
import 'package:flutter_keypick/presentation/ui/search/s_keyword.dart';
import 'package:flutter_keypick/presentation/ui/user_blog/tab/home/f_home.dart';
import 'package:flutter_keypick/presentation/ui/user_blog/tab/rank/f_rank.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

import '../../bottom_controller/user_page_controller.dart';
import '../widget/custom_bottom_nav.dart';

class UserScreen extends StatelessWidget {
  UserScreen({super.key});

  TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Keypick"),
        actions: [
          IconButton(
            onPressed: () {
              Get.toNamed("/keywordSearch");
            },
            icon: Icon(Icons.search),
          ),
          GestureDetector(
            onTap: () {
              ShowLogoutDialog(context);
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image(image: AssetImage("assets/images/logout.png"), width: 25, height: 25,),
            ),
          )
        ],
      ),
      body: Obx(() {
        if (UserPageController.to.currentIndex.value == 0) {
          return HomeFragment();
        } else {
          return RankFragment();
        }
      }),
      bottomNavigationBar: CustomBottomNav("홈", "랭킹"),
    );
  }
}

