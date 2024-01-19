import 'package:flutter/material.dart';
import 'package:flutter_keypick/domain/model/vo_rel_keyword_model.dart';

class RelKeywordItem extends StatelessWidget {
  final RelKeywordDataModel relKeywordDataModel;

  const RelKeywordItem({required this.relKeywordDataModel, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 130,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 7),
        child: Card(
          color: Colors.white,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(20))),
          elevation: 4,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "#${relKeywordDataModel.relKeyword}",
                style: TextStyle(fontSize: 20),
              ),
              Container(
                padding: EdgeInsets.only(left: 5),
                alignment: Alignment.centerLeft,
                child: Text("월 모바일 검생량 : ${relKeywordDataModel.monthlyMobileQcCnt}"),
              ),
              Container(
                padding: EdgeInsets.only(left: 5),
                alignment: Alignment.centerLeft,
                child: Text("월 pc 검색량 : ${relKeywordDataModel.monthlyPcQcCnt}"),
              ),
              Text(
                "Click",
                style: TextStyle(color: Colors.redAccent),
              )
            ],
          ),
        ),
      ),
    );
  }
}
