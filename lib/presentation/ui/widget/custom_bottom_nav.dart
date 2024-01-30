import 'package:flutter/material.dart';
import 'package:flutter_keypick/presentation/bottom_controller/user_page_controller.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

Widget CustomBottomNav(String tab1, String tab2) {
  return Container(
    decoration: BoxDecoration(boxShadow: [
      BoxShadow(color: Colors.black26, blurRadius: 10, spreadRadius: 0)
    ]),
    child: ClipRRect(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(30.0),
          topLeft: Radius.circular(30.0),
        ),
        child: Obx(
          () => BottomNavigationBar(
            currentIndex: UserPageController.to.currentIndex.value,
            onTap: (index) {
              UserPageController.to.changeIndex(index);
              print(index);
            },
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: tab1),
              BottomNavigationBarItem(icon: Icon(Icons.search), label: tab2)
            ],
          ),
        )),
  );
}
