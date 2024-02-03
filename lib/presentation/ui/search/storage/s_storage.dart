import 'package:flutter/material.dart';
import 'package:flutter_keypick/presentation/ui/search/storage/storage_item.dart';

import '../../../../domain/model/vo_rel_keyword_model.dart';

class StorageScreen extends StatelessWidget {
  const StorageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("키워드 저장소"),
      ),
      body: ListView.builder(
        itemCount: relDummy.length,
        itemBuilder: (BuildContext context, int index) {
          StorageItem(relKeywordDataModel: relDummy[index],);
        },
      ),
    );
  }
}

final relDummy = <RelKeywordDataModel>[
  RelKeywordDataModel(relKeyword: "아이패드", monthlyPcQcCnt:"123414", monthlyMobileQcCnt: "413513"),
  RelKeywordDataModel(relKeyword: "아이맥", monthlyPcQcCnt:"123414", monthlyMobileQcCnt: "413513"),
  RelKeywordDataModel(relKeyword: "애플", monthlyPcQcCnt:"123414", monthlyMobileQcCnt: "413513"),
  RelKeywordDataModel(relKeyword: "에어팟", monthlyPcQcCnt:"123414", monthlyMobileQcCnt: "413513"),
  RelKeywordDataModel(relKeyword: "아이폰14", monthlyPcQcCnt:"123414", monthlyMobileQcCnt: "413513"),
  RelKeywordDataModel(relKeyword: "아이패드 미니", monthlyPcQcCnt:"123414", monthlyMobileQcCnt: "413513"),
  RelKeywordDataModel(relKeyword: "맥스", monthlyPcQcCnt:"123414", monthlyMobileQcCnt: "413513"),
  RelKeywordDataModel(relKeyword: "ipad", monthlyPcQcCnt:"123414", monthlyMobileQcCnt: "413513"),
  RelKeywordDataModel(relKeyword: "애플", monthlyPcQcCnt:"123414", monthlyMobileQcCnt: "413513"),
  RelKeywordDataModel(relKeyword: "가격", monthlyPcQcCnt:"123414", monthlyMobileQcCnt: "413513"),
  RelKeywordDataModel(relKeyword: "주식", monthlyPcQcCnt:"123414", monthlyMobileQcCnt: "413513"),

];