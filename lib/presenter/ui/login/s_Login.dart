import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_keypick/presenter/ui/non_login/s_non_login.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController inputController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 200,
            ),
            Text(
              "안녕하세요.",
              style: TextStyle(fontSize: 50),
            ),
            Text("네이버 블로그ID를 입력 하여 \n다양한 서비스를 이용하세요."),
            SizedBox(
              height: 50,
            ),
            TextField(
              decoration: InputDecoration(
                  labelText: "Blog ID",
                  hintText: "BlogID를 입력하세요",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  )),
              controller: inputController,
              maxLines: 1,
            ),
            SizedBox(
              height: 50,
            ),
            ElevatedButton(onPressed: () {}, child: Text("등록")),
            ElevatedButton(
                onPressed: () {
                  Get.to(() => NonLoginScreen());
                },
                child: Text("ID등록 없이 시작하기"))
          ],
        ),
      ),
    );
  }
}
