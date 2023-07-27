import 'package:flutter/material.dart';
import 'main.dart';

Widget dayCard(BuildContext context, List daysOfWeek, int index) {
  return Container(
      height: 400,
      color: Colors.blue,
      child: Card(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Expanded(
                child: Row(
                  children: [
                    Expanded(
                        child: Container(
                          alignment: Alignment.topLeft,
                          child: ListTile(
                            title: Text(daysOfWeek[index]),
                          ),
                        )
                    ),
                    Expanded(
                        child: Container(
                          alignment: Alignment.topRight,
                          child: const ListTile(
                            title: Icon(Icons.edit),
                          ),
                        )
                    )
                  ],
                )
            )
          ],
        ),
      )
  );
}