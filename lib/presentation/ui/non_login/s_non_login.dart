import 'package:flutter/material.dart';
import 'package:flutter_keypick/presentation/presenter/search_keywrord_controller.dart';

class NonLoginScreen extends StatefulWidget {
  const NonLoginScreen({super.key});

  @override
  State<NonLoginScreen> createState() => _NonLoginScreenState();
}

class _NonLoginScreenState extends State<NonLoginScreen> {
  // TextEditingController textEditingController =TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Expanded(
              flex: 1,
              child: TextField(
                decoration: InputDecoration(
                  hintText: '검색 키워드를 입력해주세요',
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                ),
                // controller: textEditingController,
                onSubmitted: (value){
                  SearchKeywordController.to.getMonthRatioData(value);
                },
              ),
            ),
            SizedBox(width: 30,)
          ],
        ),
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
