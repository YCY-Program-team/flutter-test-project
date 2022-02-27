import 'package:flutter/material.dart';

class MyBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: List.generate(10, (idx) {
        return Card(
          child: Container(
            alignment: Alignment.center,
            height: 100,
            color: Colors.green,
            child: Text(
              '${1 + idx * 3}',
              style: TextStyle(fontSize: 30),
            ),
          ),
        );
      }),
    );
  }
}

class MyBody2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 15,
        itemBuilder: (context, idx) {
          print(idx);
          return Card(
            child: Container(
              alignment: Alignment.center,
              height: 100,
              color: Colors.green,
              child: Text(
                '${idx}',
                style: TextStyle(fontSize: 30),
              ),
            ),
          );
        });
  }
}

class MyBody3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 3,
      children: List.generate(50, (idx) {
        return Card(
          child: Container(
            alignment: Alignment.center,
            color: Colors.green,
            child: Text(
              '${idx}',
              style: TextStyle(fontSize: 30),
            ),
          ),
        );
      }),
    );
  }
}

class MyBody4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: 200,
        gridDelegate:
        SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: 250,childAspectRatio: 2/3),
        itemBuilder: (context, idx) {
          print(idx);
          return Card(
            child: Container(
              alignment: Alignment.center,
              color: Colors.green,
              child: Text(
                '${idx}',
                style: TextStyle(fontSize: 30),
              ),
            ),
          );
        });
  }
}
