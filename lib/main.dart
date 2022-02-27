import 'package:flutter/material.dart';
import 'package:flutter_test_project/body.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var widget = MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My Flutter App 3'),
        ),
        body: MyBody4(),
        bottomNavigationBar: BottomNavigationBar(items: [
          BottomNavigationBarItem(icon: Icon(Icons.one_k),label: 'Home1',backgroundColor: Colors.blue),
          BottomNavigationBarItem(icon: Icon(Icons.two_k),label: 'Home2',backgroundColor: Colors.blue),
          BottomNavigationBarItem(icon: Icon(Icons.three_k),label: 'Home3',backgroundColor: Colors.blue),
          BottomNavigationBarItem(icon: Icon(Icons.four_k),label: 'Home4',backgroundColor: Colors.blue)
        ]),
      ),
    );
    return widget;
  }
}
