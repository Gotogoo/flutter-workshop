import 'package:flutter/material.dart';
import 'package:myapp/custom_tabbar.dart';
import 'package:myapp/widgets/column.dart';
import 'package:myapp/widgets/container.dart';
import 'package:myapp/widgets/row.dart';

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
              text: "Row",
            ),
            rootWidget: MyRow(),
          ),
          OneTab(
            tab: Tab(
              icon: Icon(Icons.wb_sunny),
              text: "Column",
            ),
            rootWidget: MyColumn(),
          ),
          OneTab(
            tab: Tab(
              icon: Icon(Icons.access_alarm),
              text: "Container",
            ),
            rootWidget: MyContainer(),
          ),
        ],
        themeColor: Colors.blue,
      ),
    );
  }
}
