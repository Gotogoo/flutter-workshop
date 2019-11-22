import 'package:flutter/material.dart';
import 'package:myapp/custom_tabbar.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'myapp',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CustomTabBar(
        tabs: [
          OneTab(
            tab: Tab(
              icon: Icon(Icons.ac_unit),
              text: "tab1",
            ),
            rootWidget: Text("tab1"),
          ),
          OneTab(
            tab: Tab(
              icon: Icon(Icons.wb_sunny),
              text: "tab2",
            ),
            rootWidget: Text("tab2"),
          ),
        ],
        themeColor: Colors.blue,
      ),
    );
  }
}
