import 'package:flutter_keypick/presentation/bottom_controller/user_page_controller.dart';
import 'package:get/get.dart';

class InitBinding implements Bindings{
  @override
  void dependencies() {
    Get.put(UserPageController());
  }

}