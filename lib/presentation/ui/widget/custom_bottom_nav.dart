import 'package:flutter/material.dart';

Widget CustomBottomNav(String tab1, String tab2) {
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
          BottomNavigationBarItem(icon: Icon(Icons.home), label: tab1),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: tab2)
        ],
      ),
    ),
  );
}
