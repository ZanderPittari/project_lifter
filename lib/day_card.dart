import 'package:flutter/material.dart';
//import 'main.dart';

class CardData {
  String workoutName;
  int sets;
  int reps;

  CardData(this.workoutName, this.sets, this.reps);
}

CardData monday = CardData("Bench", 1, 12);

Widget dayCard(BuildContext context, List daysOfWeek, int index) {
  return Container(
      height: 400,
      color: Colors.blue,
      child: Card(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Expanded(
                child: Column(
                  children: [
                    Expanded(
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              //color: Colors.green,
                              alignment: Alignment.topLeft,
                              child: ListTile(
                                title: Text(daysOfWeek[index]),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              //color: Colors.blue,
                              alignment: Alignment.topRight,
                              padding: const EdgeInsets.all(10),
                              child:
                                IconButton(
                                  onPressed: () {},
                                  icon: const Icon(Icons.edit)
                              ),
                            )
                          )
                        ],
                      )
                    ),
                    Expanded(
                      flex: 2,
                      child: Row (
                        children: [
                          Expanded(
                              child: Column (
                                children: [
                                  const ListTile(
                                    title: Text("Workouts"),
                                    dense: true,
                                  ),
                                  ListView.builder(
                                      shrinkWrap: true,
                                      itemCount: 2,
                                      itemBuilder: (context, index) {
                                        return Text(monday.workoutName);
                                      }
                                  )
                                ],
                              )
                          ),
                          Expanded(
                            child: Column (
                              children: [
                                const ListTile(
                                  title: Text("Reps"),
                                  dense: true,
                                ),
                                ListView.builder(
                                    shrinkWrap: true,
                                    itemCount: 2,
                                    itemBuilder: (context, index) {
                                      return Text(monday.reps.toString());
                                    }
                                )
                              ],
                            )
                          ),
                          Expanded(
                              child: Column (
                                children: [
                                  const ListTile(
                                    title: Text("Sets"),
                                    dense: true,
                                  ),
                                  ListView.builder(
                                      shrinkWrap: true,
                                      itemCount: 2,
                                      itemBuilder: (context, index) {
                                        return Text(monday.sets.toString());
                                      }
                                  )
                                ],
                              )
                          ),
                        ],
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