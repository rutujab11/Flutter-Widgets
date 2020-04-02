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

  int group = 1;
  bool checkBoxValue = false;
  @override
  Widget build(BuildContext context){
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Details'),
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
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20.0, 30.0, 20.0, 0.0),
        child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'NAME',
                style: TextStyle(
                  color: Colors.grey,
                  letterSpacing: 1.5,
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                'Rutuja Bhandigani',
                style: TextStyle(
                    color: Colors.black54,
                    letterSpacing: 1.5,
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold
                ),
              ),
              SizedBox(height: 22.0),
              Text(
                'PHONE NO.',
                style: TextStyle(
                    color: Colors.grey,
                    letterSpacing: 1.5,
                    fontWeight: FontWeight.bold
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                '8769054645',
                style: TextStyle(
                    color: Colors.black54,
                    letterSpacing: 1.5,
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold
                ),
              ),
              SizedBox(height: 22.0),
              Row(
                children: <Widget>[
                  Text(
                    'GENDER:',
                    style: TextStyle(
                        color: Colors.grey,
                        letterSpacing: 1.5,
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0
                    ),
                  ),
                  Radio(
                    value: 1,
                    groupValue: group,
                    onChanged: (T) {
                      setState(() {
                        group = T;
                      });
                    },
                  ),
                  SizedBox(width: 10.0,),
                  Text('Male'),
                  SizedBox(width: 25.0,),
                  Radio(
                    value: 2,
                    groupValue: group,
                    onChanged: (T) {
                      setState(() {
                        group = T;
                      });
                    },
                  ),
                  SizedBox(width: 10.0,),
                  Text('Feale'),
                ],
              ),
              SizedBox(height: 22.0),
              Text(
                'PROFESSION',
                style: TextStyle(
                    color: Colors.grey,
                    letterSpacing: 1.5,
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0
                ),
              ),
              SizedBox(height: 10.0),
              Row(
                children: <Widget>[
                  Checkbox(
                    value: checkBoxValue,
                    onChanged: (bool value) {
                      setState(() {
                        checkBoxValue = value;
                      });
                    },
                  ),
                  Text('Lecturer')
                ],
              ),
              Row(
                children: <Widget>[
                  Checkbox(
                    value: checkBoxValue,
                    onChanged: (bool value) {
                      setState(() {
                        checkBoxValue = value;
                      });
                    },
                  ),
                  Text('Student')
                ],
              ),
              Row(
                children: <Widget>[
                  Checkbox(
                    value: checkBoxValue,
                    onChanged: (bool value) {
                      setState(() {
                        checkBoxValue = value;
                      });
                    },
                  ),
                  Text('Employee')
                ],
              ),
              SizedBox(height: 22.0),
              Text(
                'AGE',
                style: TextStyle(
                    color: Colors.grey,
                    letterSpacing: 1.5,
                    fontWeight: FontWeight.bold
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                '20',
                style: TextStyle(
                    color: Colors.black54,
                    letterSpacing: 1.5,
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold
                ),
              ),
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
