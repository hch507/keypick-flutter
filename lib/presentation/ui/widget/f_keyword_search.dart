import 'package:flutter/material.dart';
import 'package:flutter_keypick/presentation/presenter/history_controller.dart';
import 'package:flutter_keypick/presentation/presenter/search_keywrord_controller.dart';
import 'package:get/get.dart';


class KeywordSearchFragment extends GetView<HistoryController> {
  KeywordSearchFragment({super.key});

  TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Expanded(
              flex: 1,
              child: TextField(
                decoration: const InputDecoration(
                  hintText: '검색 키워드를 입력해주세요',
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                ),
                autofocus: true,
                controller: textEditingController,
                onSubmitted: (value) async {
                  SearchKeywordController.to.getRelData(value);
                  controller.search(value);
                  Get.toNamed("/keywordPage");
                },
              ),
            ),
            SizedBox(
              width: 30,
            )
          ],
        ),
      ),
      body: _searchHistory(),
    );
  }
  Widget _searchHistory() {
    return Obx(
          () => ListView(
        children: List.generate(
            controller.history.length,
                (index) => ListTile(
              leading: Icon(Icons.history),
              title: Text(controller.history[index]),
              trailing: Icon(Icons.arrow_forward_ios),
            )),
      ),
    );
  }

}

