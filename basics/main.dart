import 'package:flutter/material.dart';
import 'dart:async';

void main() => runApp(MaterialApp(
  home: BasicInfo(),
));

class BasicInfo extends StatefulWidget {
  @override
  _BasicInfoState createState() => _BasicInfoState();
}
class _BasicInfoState extends State<BasicInfo> {

  int bookCount = 0;
  DateTime _date = new DateTime.now();
  Future<Null> _selectDate(BuildContext context) async {
    final DateTime picked = await showDatePicker(
        context: context,
        initialDate: _date,
        firstDate: new DateTime(1947),
        lastDate: new DateTime(2021)
    );


    if(picked != null && picked != _date) {
      print('Date Selected: ${_date.toString()}');
      setState(() {
        _date = picked;
      });
    }

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text('User Info'),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              bookCount += 1;
            });
          },
          child: Icon(Icons.add),
          backgroundColor:  Colors.grey[800],
      ),
      body: Padding(
          padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Center(
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/image.png'),
                  radius: 40.0,
                ),
              ),
              Divider(
                height: 40.0,
                color: Colors.grey[800],
              ),
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
                  color: Colors.amberAccent[200],
                  letterSpacing: 1.5,
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold
                ),
              ),
              SizedBox(height: 22.0),
              Text(
                'NUMBER OF BOOKS ISSUED',
                style: TextStyle(
                    color: Colors.grey,
                    letterSpacing: 1.5,
                    fontWeight: FontWeight.bold
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                '$bookCount',
                style: TextStyle(
                    color: Colors.amberAccent[200],
                    letterSpacing: 1.5,
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold
                ),
              ),
              SizedBox(height: 22.0),
              Text(
                'DATE OF BIRTH',
                style: TextStyle(
                    color: Colors.grey,
                    letterSpacing: 1.5,
                    fontWeight: FontWeight.bold
                ),
              ),
              SizedBox(height: 10.0),
              Row(
                children: <Widget>[
                  IconButton(
                    onPressed: () {_selectDate(context);},
                    icon: Icon(
                      Icons.calendar_today,
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(width: 10.0),
                  Text(
                      '${_date.toString()}',
                    style: TextStyle(
                        color: Colors.amberAccent[200],
                        letterSpacing: 1.5,
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ],
              ),
              /*SizedBox(height: 30.0),
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
                    color: Colors.amberAccent[200],
                    letterSpacing: 1.5,
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold
                ),
              ),*/
              SizedBox(height: 22.0),
              Text(
                'EMAIL',
                style: TextStyle(
                    color: Colors.grey,
                    letterSpacing: 1.5,
                    fontWeight: FontWeight.bold
                ),
              ),
              SizedBox(height: 10.0),
              Row(
                children: <Widget>[
                  Icon(
                      Icons.email,
                      color: Colors.grey[400],
                  ),
                  SizedBox(width: 10.0),
                  Text(
                    'rutuja.b@gmail.com',
                    style: TextStyle(
                      color: Colors.grey[400],
                      fontSize: 18.0,
                      letterSpacing: 1.0,
                    ),
                  ),
                ],
              ),
            ],
          ),
      ),
    );
  }
}
