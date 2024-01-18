import 'package:flutter/material.dart';
import 'package:flutter_keypick/presentation/ui/user_blog/tab/home/f_home.dart';
import 'package:flutter_keypick/presentation/ui/user_blog/tab/rank/f_rank.dart';


class UserScreen extends StatefulWidget {
  const UserScreen({super.key});

  @override
  State<UserScreen> createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> {
  TextEditingController textEditingController = TextEditingController();

  final List<Widget> _widgetOption = <Widget>[
    HomeFragment(),
    RankFragment()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Expanded(
              flex: 1,
              child: TextField(
                decoration: InputDecoration(
                  hintText: '검색 키워드를 입력해주세요',
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                ),
                controller: textEditingController,
              ),
            ),
            SizedBox(
              width: 30,
            )
          ],
        ),
      ),
      body: RankFragment(),
      bottomNavigationBar: CustomBottomNav(),
    );
  }
}

Widget CustomBottomNav() {
  return Container(
    decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(color: Colors.black26, blurRadius: 10, spreadRadius: 0)
        ]
    ),
    child: ClipRRect(
      borderRadius: BorderRadius.only(
        topRight: Radius.circular(30.0),
        topLeft: Radius.circular(30.0),
      ),
      child: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "홈"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "검색")
        ],
      ),
    ),
  );
}
