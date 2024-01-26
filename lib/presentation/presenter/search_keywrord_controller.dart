import 'package:flutter_keypick/domain/usecase/month_ratio_usecase.dart';
import 'package:get/get.dart';

class SearchKeywordController extends GetxController{
  static SearchKeywordController get to => Get.find();
  MonthRatioUseCase monthRatioUseCase = MonthRatioUseCase();
  void getMonthRatioData(String searchTerm){
    monthRatioUseCase.invoke(searchTerm);
  }
}