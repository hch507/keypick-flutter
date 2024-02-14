import 'package:flutter/material.dart';
import 'package:flutter_keypick/presentation/ui/widget/blog_bar_chart.dart';
import 'package:get/get.dart';

class HomeFragment extends StatelessWidget {
  HomeFragment({super.key});

  var blogID = Get.arguments;
  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () async {},
      child: SingleChildScrollView(
        physics: AlwaysScrollableScrollPhysics(),
        child: Container(
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              SizedBox(
                height: 40,
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  blogID as String,
                  style: TextStyle(fontSize: 30),
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: Text("좋은 하루 되세요^^"),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Icon(Icons.ac_unit_outlined), Text("최근 블로그 방문자 수")],
              ),
              Container(
                alignment: Alignment.centerRight,
                child: Text("Today     0명"),
              ),
              Container(
                alignment: Alignment.centerRight,
                child: Text("전날대비     0명"),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                    border: Border.all(color: Colors.cyan, width: 1)),
                height: 300,
                child: BlogBarChart(),
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text("오늘의 추천 키워드 GO!"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
