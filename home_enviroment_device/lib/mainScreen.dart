import 'dart:ffi';
import 'main.dart';
import 'package:flutter/material.dart';
import 'aqi_tools.dart';

// ignore: camel_case_types
class mainScreen extends StatefulWidget {
  
  @override
  _mainScreenState createState() => _mainScreenState();
}

class _mainScreenState extends State<mainScreen> {
  @override
  Widget build(BuildContext context) {
    int api = 32;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.menu), onPressed: null),
        title: Text('logo'),
        centerTitle: true,
        actions: <Widget>[
          IconButton(icon: Icon(Icons.person_outline), onPressed: null)
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
              height: 200,
              width: 300,
              color: Colors.transparent,
              child: Container(
                  decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      border: Border.all()),
                  child: new Center(
                    child: new Text(
                      "$api",
                      style: TextStyle(color: Colors.white, fontSize: 22),
                      textAlign: TextAlign.center,
                    ),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
