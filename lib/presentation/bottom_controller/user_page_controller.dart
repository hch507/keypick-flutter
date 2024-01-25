import 'package:get/get.dart';

class UserPageController extends GetxController{
  static UserPageController get to => Get.find();
  RxInt currentIndex = 0.obs;

  void changeIndex(int index){
    currentIndex(index);
  }
}