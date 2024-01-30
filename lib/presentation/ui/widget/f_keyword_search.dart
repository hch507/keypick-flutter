import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';


class KeywordSearchFragment extends StatefulWidget {
  const KeywordSearchFragment({super.key});

  @override
  State<KeywordSearchFragment> createState() => _KeywordSearchFragmentState();
}

class _KeywordSearchFragmentState extends State<KeywordSearchFragment> {
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
                onSubmitted: (value) async{
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
}

Widget _searchHistory() {
  return ListView(
    children: List.generate(10, (index) => ListTile(
      leading: Icon(Icons.history),
      title: Text("$index"),
      trailing: Icon(Icons.arrow_forward_ios),
    )),
  );
}



