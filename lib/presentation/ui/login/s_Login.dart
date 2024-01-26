import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_keypick/presentation/ui/search/s_keyword.dart';

import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../presenter/login_controller.dart';
import '../non_login/s_non_login.dart';
import '../user_blog/s_user.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> with IsLoginProvider{
  late TextEditingController inputController;
  final controller = Get.put(LoginController());

  @override
  void initState() {
    inputController =TextEditingController();
    super.initState();
  }
  @override
  void dispose() {
    inputController.dispose();
    super.dispose();
  }
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
              controller: inputController,
              maxLines: 1,
            ),
            const SizedBox(
              height: 50,
            ),
            ElevatedButton(
              onPressed: () {
                // isLogin.requestLogin(inputController.text);
                Get.toNamed("/userPage");
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
