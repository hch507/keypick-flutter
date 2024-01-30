import 'package:flutter/material.dart';
import 'package:flutter_keypick/presentation/binding/init_binding.dart';
import 'package:flutter_keypick/presentation/ui/keypick_main.dart';
import 'package:flutter_keypick/presentation/ui/non_login/s_non_login.dart';
import 'package:flutter_keypick/presentation/ui/search/s_keyword.dart';
import 'package:flutter_keypick/presentation/ui/user_blog/s_user.dart';
import 'package:flutter_keypick/presentation/ui/widget/f_keyword_search.dart';
import 'package:flutter_keypick/theme/theme.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: DefaultTheme,
      initialBinding: InitBinding(),
      initialRoute: "/login",
      getPages: [
        GetPage(name: "/login", page: ()=>KeyPickMain()),
        GetPage(name: "/nonLogin", page: () => NonLoginScreen()),
        GetPage(name: "/userPage", page: ()=>UserScreen()),
        GetPage(name: "/keywordPage", page: ()=>KeywordScreen()),
        GetPage(name: "/keywordSearch", page: () => KeywordSearchFragment(),transition: Transition.noTransition),
      ],
    );
  }
}


