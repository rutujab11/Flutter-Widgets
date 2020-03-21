import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  createState() => MyAppState();
}


class MyAppState extends State<MyApp> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Checkbox',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
          appBar: AppBar(
            title: Text("Checkbox"),
          ),
          body: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Checkbox(
                    value: isChecked,
                    onChanged: (value) {
                      setState(() {
                        isChecked = value;
                      });
                    },
                  ),
                ]
            ),
          ),
        )
    );
  }
}