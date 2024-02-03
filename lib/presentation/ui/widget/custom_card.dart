import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget CustomCard(String name, String cnt){
  return Card(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(20)),
    ),
    elevation: 4,
    child: Container(
      width: 150,
      height: 150,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(name, style: TextStyle(fontSize: 20),),
          Text(cnt)
        ],
      ),
    ),
  );
}