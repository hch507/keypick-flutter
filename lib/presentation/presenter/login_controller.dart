import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:xml/xml.dart';

import '../../data/source/remote/retrofit/user_retrofit_client.dart';

class LoginController extends GetxController {
  static LoginController get to => Get.find();
  Rx<bool> isLogin = false.obs;
  late Rx<String?> _user;
  late FlutterSecureStorage loginStoage;
  UserRestClient? client;

  LoginController() {
    Dio dio = Dio();
    this.client = UserRestClient(dio);
  }
  // @override
  // void onInit() async {
  //   loginStoage = FlutterSecureStorage();
  //   _user = Rx<String?>(await loginStoage.read(key: "login"));
  //   print(_user);
  //   if (_user == null) {
  //   Get.offNamed("/login");
  //   } else {
  //   Get.offNamed("/userPage");
  //   }
  //   super.onInit();
  // }
  //
  @override
  void onReady() async {
    loginStoage = FlutterSecureStorage();
    _user = Rx<String?>(await loginStoage.read(key: "login"));
    print(_user);
    if (_user == null) {
      Get.toNamed("/login");
    } else {
      Get.toNamed("/userPage");
    }
    super.onReady();
  }
  //
  // _moveToPage(String? user) {
  //   print("move");
  //   if (_user == null) {
  //     Get.toNamed("/login");
  //   } else {
  //     Get.toNamed("/userPage");
  //   }
  // }

  requestLogin(String userID) async {
    try {
      await client?.getUserData(userID);
      await loginStoage.write(key: "login", value: userID);
      _user.value = userID;
      Get.toNamed("/userPage");
      print("성공");
    } catch (e) {
      isLogin(false);
      print("실패");
    }
  }

  requestLogOut() async{
    await loginStoage.deleteAll();

  }
}
