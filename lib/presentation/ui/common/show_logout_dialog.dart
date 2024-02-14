import 'package:flutter/material.dart';
import 'package:flutter_keypick/presentation/presenter/login_controller.dart';
import 'package:get/get.dart';

void ShowLogoutDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        title: const Column(
          children: [
            Text("Logout"),
          ],
        ),
        content: const Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "로그아웃하시겠습니까??",
            ),
          ],
        ),
        actions: [
          ElevatedButton(
              onPressed: () {
                LoginController.to.requestLogOut();

              },
              child: Text("확인")),
          ElevatedButton(
              onPressed: () {
                Get.back();
              },
              child: Text("취소"))
        ],
      );
    },
  );
}
