import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'myapp',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: Container(
          alignment: Alignment.center,
          child: Text(
            "TODO: Display the tab bar",
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),  
    );
  }
}

