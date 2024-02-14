import 'package:flutter/material.dart';
import 'package:flutter_keypick/presentation/presenter/rank_controller.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class RankFragment extends StatelessWidget {
  RankFragment({super.key});

  TextEditingController textEditingController = TextEditingController();

  final controller = Get.put(RankController());

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 40,),
            Container(
              alignment: Alignment.centerLeft,
              child: Text("NAME", style: TextStyle(fontSize: 30),),
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: Text("좋은 하루 되세요^^"),
            ),
            SizedBox(height: 30,),
            Text("Posting Blog Keyword"),
            TextField(
              decoration: InputDecoration(
                labelText: "KEYWORD",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0))
                )
              ),
              controller: textEditingController,
            ),
            SizedBox(height:30),
            ElevatedButton(onPressed: (){
              RankController.to.requestPostingRank(textEditingController.text);
            }, child: Text("검색")),
            SizedBox(height:40),
            Row(
              children: [
                Text("검색결과"),
                Icon(Icons.ac_unit_outlined)
              ],
            ),
            SizedBox(height: 10,),
            Container(
              height: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(30)),
                border: Border.all(
                  width: 1,
                  color: Colors.black45
                )
              ),
            )
          ],
        ),
      ),
    );
  }
}
