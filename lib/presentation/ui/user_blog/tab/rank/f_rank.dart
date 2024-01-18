import 'package:flutter/material.dart';

class RankFragment extends StatefulWidget {
  const RankFragment({super.key});

  @override
  State<RankFragment> createState() => _RankFragmentState();
}

class _RankFragmentState extends State<RankFragment> {
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
            ),
            SizedBox(height:30),
            ElevatedButton(onPressed: (){}, child: Text("검색")),
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
