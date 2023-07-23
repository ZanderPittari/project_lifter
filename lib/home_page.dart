import 'package:flutter/material.dart';
import 'main.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<StatefulWidget> createState() => _MainPageState();

}

class _MainPageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        
      ),
    )
    throw UnimplementedError();
  }
}