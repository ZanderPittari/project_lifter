import 'package:flutter/material.dart';
//import 'main.dart';
import 'day_card.dart';

Widget homePage(BuildContext context) {
  List<String> daysOfWeek = ['Monday','Tuesday','Wednesday','Thursday','Friday','Saturday','Sunday'];
  return Scaffold(
    body: ListView.builder(
      itemBuilder: (BuildContext context, int index) {
        return dayCard(context, daysOfWeek, index);
      },
      scrollDirection: Axis.vertical,
      itemCount: 7,
    ),
  );
}