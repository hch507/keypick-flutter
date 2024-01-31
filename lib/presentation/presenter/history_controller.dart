import 'package:get/state_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HistoryController extends GetxController{
  String key ="searchKey";
  late SharedPreferences profs;
  RxList<String> history = RxList<String>.empty(growable: true);
  @override
  void onInit() async {
    profs = await SharedPreferences.getInstance();
    List<String> initData = profs.getStringList(key) ?? [];
    history(initData);
    super.onInit();
  }
  void search(String search){
    history.addIf(!history.contains(search), search);
    profs.setStringList(key, history);

  }

}