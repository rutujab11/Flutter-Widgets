import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: MainActivity(),
  ));
}

class MainActivity extends StatefulWidget{
  @override
  _MainActivityState createState() => _MainActivityState();
}

class _MainActivityState extends State<MainActivity>{
  double _value= 0.0;

  onChanged(double value){
    setState(() {
      _value = value;
    });
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Sliders'),
      ),
      body: Column(
        children: <Widget>[
          Container(
            child: Slider(
              value: _value,
                onChanged: onChanged),
            )
          ],
          ),
      );
  }
}