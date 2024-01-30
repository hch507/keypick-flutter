import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class NonLoginScreen extends StatefulWidget {
  const NonLoginScreen({super.key});

  @override
  State<NonLoginScreen> createState() => _NonLoginScreenState();
}

class _NonLoginScreenState extends State<NonLoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("KeyPick"),
        actions: [
          IconButton(
            onPressed: () {
              Get.toNamed("/keywordSearch");
            },
            icon: Icon(Icons.search),
          )
        ],
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("블로그 아이디를 등록하시면 더 많은 서비스를 이용하실 수 있습니다."),
            SizedBox(
              height: 50,
            ),
            ElevatedButton(onPressed: () {}, child: Text("블로그 ID 등록하러 가기"))
          ],
        ),
      ),
    );
  }
}
