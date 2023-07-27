import 'package:flutter/material.dart';
import 'main.dart';

Widget dayCard(BuildContext context, List daysOfWeek, int index) {
  return Card(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ListTile(
            title: Text(daysOfWeek[index]),
          )
        ],
      )
  );
}