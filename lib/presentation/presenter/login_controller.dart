
import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:xml/xml.dart';

import '../../data/source/remote/retrofit/user_retrofit_client.dart';

class LoginController extends GetxController{
  Rx<bool> isLogin = false.obs;
  late Rx<String?> _user;
  late SharedPreferences profs;
  UserRestClient? client;
  XmlDocument? XmlData;
  LoginController() {
    Dio dio = Dio();
    this.client = UserRestClient(dio);
  }
  @override
  void onReady() async{
    profs= await SharedPreferences.getInstance();
    _user = Rx<String?>(profs.getString("user"));
    ever(_user, _moveToPage);
    super.onReady();
  }

  _moveToPage(String? user){
    if(_user.value==null){
      Get.toNamed("/userPage");
    }else{
      Get.toNamed("/login");
    }
  }

  requestLogin(String userID) async{
    try{
      await client?.getUserData(userID);
      profs.setString("user", userID);
      print("성공");
    }catch(e){
      isLogin(false);
      print("실패");
    }

    // XmlData = XmlDocument.parse(resp!);
    // final wantData = XmlData!.findAllElements('visitorcnt');
    // print(wantData.map((e) {
    //   final id = e.getAttribute('id') ?? '';
    //   final cnt = e.getAttribute('cnt') ?? '';
    //   return {'id': id, 'cnt': cnt};
    // }));
  }
}
