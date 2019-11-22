import 'package:flutter/material.dart';

class MyRow extends StatefulWidget {
  @override
  _MyRowState createState() => _MyRowState();
}

class _MyRowState extends State<MyRow> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.yellow,
      alignment: Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          Icon(Icons.stars, size: 50,),
          Icon(Icons.stars, size: 100,),
          Icon(Icons.stars, size: 50,),
        ],
      ),
    );
  }
}