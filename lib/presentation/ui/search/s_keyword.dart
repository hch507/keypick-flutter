import 'package:flutter/material.dart';
import 'package:flutter_keypick/presentation/ui/search/tab/keyword/f_keyword.dart';
import 'package:flutter_keypick/presentation/ui/widget/custom_bottom_nav.dart';

class KeywordScreen extends StatefulWidget {
  const KeywordScreen({super.key});

  @override
  State<KeywordScreen> createState() => _KeywordScreenState();
}

class _KeywordScreenState extends State<KeywordScreen> {
  TextEditingController textEditingController =TextEditingController();
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
                controller: textEditingController,
              ),
            ),
            SizedBox(width: 30,)
          ],
        ),
      ),
    body: KeywordFragment(),
    bottomNavigationBar: CustomBottomNav("검색어", "연관 검색어"),
    );
  }
}
