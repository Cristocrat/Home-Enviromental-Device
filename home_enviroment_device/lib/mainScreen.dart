import 'dart:ffi';
import 'main.dart';
import 'package:flutter/material.dart';
import 'aqi_tools.dart';
import 'package:firebase_database/firebase_database.dart';
import 'data.dart';

// ignore: camel_case_types
class mainScreen extends StatefulWidget {
  AqiTools aqivalue = new AqiTools(" ");
  @override
  _mainScreenState createState() => _mainScreenState();
}

class _mainScreenState extends State<mainScreen> {
  @override
  Widget build(BuildContext context) {
    AqiTools aqivalue;
    int aqi = 32;
    String temp;

    final databaseReference = FirebaseDatabase.instance.reference();
    widget.aqivalue.value = aqi;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.menu), onPressed: null),
        title: Text('name'),
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
                        color: Colors.transparent,
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        border: Border.all()),
                    child: new Center(
                        child: ListView(children: <Widget>[
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 13, 0, 13),
                        child: new Text(
                          "Temperature",
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Padding(
                          child: new Text(
                            "$aqi",
                            style: TextStyle(
                                color: AqiTools.getColor(widget.aqivalue.value),
                                fontSize: 22),
                            textAlign: TextAlign.center,
                          ),
                          padding: EdgeInsets.fromLTRB(0, 0, 0, 0)),
                    ])))),
          ],
        ),
      ),
    );
  }
}
