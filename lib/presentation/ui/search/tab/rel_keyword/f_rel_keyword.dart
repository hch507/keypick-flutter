import 'package:flutter/material.dart';
import 'package:flutter_keypick/domain/model/vo_rel_keyword_model.dart';
import 'package:flutter_keypick/presentation/ui/search/tab/rel_keyword/rel_keyword_item.dart';

class RelKeywordFragment extends StatefulWidget {
  const RelKeywordFragment({super.key});

  @override
  State<RelKeywordFragment> createState() => _RelKeywordFragmentState();
}

class _RelKeywordFragmentState extends State<RelKeywordFragment> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ...relDummy.map((e) => RelKeywordItem(relKeywordDataModel: e))
        ],
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
