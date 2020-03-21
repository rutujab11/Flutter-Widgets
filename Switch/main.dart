import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  createState() => MyAppState();
}


class MyAppState extends State<MyApp> {
  bool isSwitched = true;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Switch Check',
        theme: ThemeData(
          primarySwatch: Colors.blue,
    ),
    home: Scaffold(
      appBar: AppBar(
        title: Text("Switch Check"),
    ),
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Switch(
              value: isSwitched,
              onChanged: (value) {
                setState(() {
                  isSwitched = value;
                });
              },
              activeTrackColor: Colors.lightGreenAccent,
              activeColor: Colors.green,
            )
            ]
          ),
        ),
      )
    );
  }
}