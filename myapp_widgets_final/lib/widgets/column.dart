import 'package:flutter/material.dart';

class MyColumn extends StatefulWidget {
  @override
  _MyColumnState createState() => _MyColumnState();
}

class _MyColumnState extends State<MyColumn> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.yellow,
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Icon(Icons.stars, size: 100),
          Icon(Icons.stars, size: 150),
          Icon(Icons.stars, size: 100),
        ],
      ),
    );
  }
}