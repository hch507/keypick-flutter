import 'package:flutter/material.dart';
import 'package:flutter_keypick/presentation/ui/search/s_keyword.dart';
import 'package:flutter_keypick/presentation/ui/user_blog/tab/home/f_home.dart';
import 'package:flutter_keypick/presentation/ui/user_blog/tab/rank/f_rank.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

import '../../bottom_controller/user_page_controller.dart';
import '../widget/custom_bottom_nav.dart';

class UserScreen extends StatefulWidget {
  const UserScreen({super.key});

  @override
  State<UserScreen> createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> {
  TextEditingController textEditingController = TextEditingController();

  final List<Widget> _widgetOption = <Widget>[HomeFragment(), RankFragment()];

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
