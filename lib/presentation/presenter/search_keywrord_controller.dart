import 'package:flutter/cupertino.dart';
import 'package:flutter_keypick/domain/usecase/month_ratio_usecase.dart';
import 'package:flutter_keypick/domain/usecase/relkeyword_usecase.dart';
import 'package:get/get.dart';

class SearchKeywordController extends GetxController{
  static SearchKeywordController get to => Get.find();
  MonthRatioUseCase monthRatioUseCase = MonthRatioUseCase();
  RelKeywordUseCase relKeywordUseCase = RelKeywordUseCase();
  void getMonthRatioData(String searchTerm){
    monthRatioUseCase.invoke(searchTerm);
  }
  void getRelData(String searchTerm){
    debugPrint("controller");
    relKeywordUseCase.invoke(searchTerm);
  }
}