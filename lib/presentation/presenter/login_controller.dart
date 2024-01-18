



import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:xml/xml.dart';

import '../../data/source/remote/retrofit/user_retrofit_client.dart';

class LoginController extends GetxController{
  Rx<bool> isLogin = false.obs;
  UserRestClient? client;
  XmlDocument? XmlData;
  LoginController() {
    Dio dio = Dio();
    this.client = UserRestClient(dio);
  }

  void requestLogin(String userID) async{
    final resp =await client?.getUserData(userID);
    XmlData = XmlDocument.parse(resp!);
    final wantData = XmlData!.findAllElements('visitorcnt');
    print(wantData.map((e) {
      final id = e.getAttribute('id') ?? '';
      final cnt = e.getAttribute('cnt') ?? '';
      return {'id': id, 'cnt': cnt};
    }));
  }
}

mixin IsLoginProvider{
  late LoginController isLogin = Get.find();
}