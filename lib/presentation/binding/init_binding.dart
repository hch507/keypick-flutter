import 'package:flutter_keypick/presentation/bottom_controller/user_page_controller.dart';
import 'package:flutter_keypick/presentation/presenter/search_keywrord_controller.dart';
import 'package:get/get.dart';

import '../presenter/login_controller.dart';

class InitBinding implements Bindings{
  @override
  void dependencies() {
     Get.put(LoginController());
     Get.put(SearchKeywordController());
  }

}