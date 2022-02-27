import 'package:flutter/material.dart';
import 'package:flutter_test_project/body.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List page = [MyBody(),MyBody2(),MyBody3(),MyBody4()];
  int index = 0;
  @override
  Widget build(BuildContext context) {
    var widget = MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Test Project'),
        ),
        body: page[index],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
            currentIndex: index,
            onTap: (idx){
              setState(() {
                index = idx;
              });
            },
            items: [
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


