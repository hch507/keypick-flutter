
import 'package:flutter_keypick/domain/usecase/rank_usecase.dart';
import 'package:get/get.dart';

class RankController extends GetxController{
  RankUseCase rankUseCase = RankUseCase();
  void requestPostingRank(String searchTerm){
    rankUseCase.invoke(searchTerm);
  }

}

mixin RankProvider{
  late RankController rankController= Get.find();
}