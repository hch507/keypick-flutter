
import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter_keypick/domain/usecase/rank_usecase.dart';
import 'package:get/get.dart';

class RankController extends GetxController{
  static RankController get to => Get.find();
  RankUseCase rankUseCase = RankUseCase();
  void requestPostingRank(String searchTerm){
    rankUseCase.invoke(searchTerm).then((value) => print(value.items.map((e) => debugPrint(e.bloggerlink))));
  }

}
