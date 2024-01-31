import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_keypick/presentation/presenter/login_controller.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class LoginScreen extends GetView<LoginController> {
  LoginScreen({super.key});

  late String blogId;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 200,
            ),
            const Text(
              "안녕하세요.",
              style: TextStyle(fontSize: 50),
            ),
            const Text("네이버 블로그ID를 입력 하여 \n다양한 서비스를 이용하세요."),
            const SizedBox(
              height: 50,
            ),
            TextField(
              decoration: const InputDecoration(
                  labelText: "Blog ID",
                  hintText: "BlogID를 입력하세요",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  )),
              onChanged: (value) {
                blogId = value;
              },
              maxLines: 1,
            ),
            const SizedBox(
              height: 50,
            ),
            ElevatedButton(
              onPressed: () {
                controller.requestLogin(blogId);
                if (controller.isLogin.value) {
                  Get.toNamed("/userPage");
                } else {
                  showToast();
                }
              },
              child: Text("등록"),
            ),
            ElevatedButton(
              onPressed: () {
                Get.toNamed("/nonLogin");
              },
              child: Text("ID등록 없이 시작하기"),
            ),
          ],
        ),
      ),
    );
  }
}

void showToast() {
  Fluttertoast.showToast(msg: "존재하지 않은 블로그 입니다.", gravity: ToastGravity.BOTTOM);
}
