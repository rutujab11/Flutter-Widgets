import 'package:flutter/material.dart';
import 'package:flutterpopupmenu/Constants.dart';

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
  @override
  Widget build(BuildContext context){
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Popup Menu'),
        actions: <Widget>[
          PopupMenuButton<String>(
            onSelected: choiceAction,
            itemBuilder: (BuildContext context){
              return Constants.choices.map((String choice) {
                return PopupMenuItem<String>(
                  value: choice,
                  child: Text(choice),
                );
              }).toList();
            },
          )
        ],
      ),
      body: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text('Body'),
          ],
        ),
      ),
    );
    }

    void choiceAction(String choice){
      if(choice == Constants.Account){
        print('Account');
      }else if(choice == Constants.Settings){
        print('Settings');
      }if(choice == Constants.Help){
        print('Help');
      }if(choice == Constants.SignOut){
        print('SignOut');
      }
    }
  }