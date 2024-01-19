import 'package:flutter/material.dart';
import 'package:flutter_keypick/presentation/ui/widget/custom_card.dart';

class KeywordFragment extends StatefulWidget {
  const KeywordFragment({super.key});

  @override
  State<KeywordFragment> createState() => _KeywordFragmentState();
}

class _KeywordFragmentState extends State<KeywordFragment> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Text(
            "검생어 : 아이패드",
            style: TextStyle(fontSize: 25),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomCard("Pc 월 검색량", "42221"),
                CustomCard("모바일 월 검색량", "31243")
              ],
            ),
          ),
          Container(
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomCard("블로스 수", "42221"),
                CustomCard("30일간 포스팅 수", "31243")
              ],
            ),
          ),
          SizedBox(height: 30,),
          Text(
            "키워드 분석",
            style: TextStyle(fontSize: 25),
          ),
        ],
      ),
    );
  }
}
