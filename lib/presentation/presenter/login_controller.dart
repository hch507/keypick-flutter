import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
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

  @override
  void onReady() async {
    loginStoage = FlutterSecureStorage();
    _user = Rx<String?>(await loginStoage.read(key: "login"));
    print(_user);
    if (_user.value == null) {
      Get.toNamed("/login");
    } else {
      Get.toNamed("/userPage" , arguments: _user.value);
    }
    super.onReady();
  }


  requestLogin(String userID) async {
    try {
      await client?.getUserData(userID);
      await loginStoage.write(key: "login", value: userID);
      _user.value = userID;
      Get.toNamed("/userPage", arguments: _user.value );
      print("성공");
    } catch (e) {
      // isLogin(false);
      print("실패");
    }
  }

  requestLogOut() async{
    await loginStoage.deleteAll();
    Get.offAllNamed("/login");
  }
}
