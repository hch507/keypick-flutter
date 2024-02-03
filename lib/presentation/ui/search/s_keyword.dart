import 'package:flutter/material.dart';
import 'package:flutter_keypick/presentation/bottom_controller/user_page_controller.dart';
import 'package:flutter_keypick/presentation/ui/search/tab/keyword/f_keyword.dart';
import 'package:flutter_keypick/presentation/ui/search/tab/rel_keyword/f_rel_keyword.dart';
import 'package:flutter_keypick/presentation/ui/widget/custom_bottom_nav.dart';
import 'package:get/get.dart';

import '../common/show_logout_dialog.dart';

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
        title: Text("Keyword"),
        actions: [
          IconButton(onPressed: () {
            Get.toNamed("/keywordSearch");
          },
            icon: Icon(Icons.search),),
          GestureDetector(
            onTap: () {
              Get.toNamed("/storagePage");
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image(image: AssetImage("assets/images/storage.png"), width: 25, height: 25,),
            ),
          )
        ],
      ),
    body: Obx((){
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
