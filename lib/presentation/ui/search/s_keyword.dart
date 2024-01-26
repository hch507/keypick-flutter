import 'package:flutter/material.dart';
import 'package:flutter_keypick/presentation/bottom_controller/user_page_controller.dart';
import 'package:flutter_keypick/presentation/ui/search/tab/keyword/f_keyword.dart';
import 'package:flutter_keypick/presentation/ui/search/tab/rel_keyword/f_rel_keyword.dart';
import 'package:flutter_keypick/presentation/ui/user_blog/tab/rank/f_rank.dart';
import 'package:flutter_keypick/presentation/ui/widget/custom_bottom_nav.dart';
import 'package:get/get.dart';

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
    body:  Obx((){
      if(UserPageController.to.currentIndex.value==0){
        return KeywordFragment();
      }else{
        return RelKeywordFragment();
      }
    }),
    bottomNavigationBar: CustomBottomNav("검색어", "연관 검색어"),
    );
  }
}
