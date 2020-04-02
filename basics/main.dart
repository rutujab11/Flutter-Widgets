import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

void main() => runApp(MaterialApp(
  home: Home(),
));

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Trial'),
        centerTitle: true,
        backgroundColor: Colors.grey[800],
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 0.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(20.0),
              child: Text('One'),
              color: Colors.amberAccent
            ),
            Container(
                padding: EdgeInsets.all(20.0),
                child: Text('Two'),
                color: Colors.indigoAccent
            ),
            Container(
                padding: EdgeInsets.all(20.0),
                child: Text('Three'),
                color: Colors.deepOrangeAccent
            ),
          ],
        ),
      ),
      /*body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Text('Hello World'),
          RaisedButton(
            onPressed: () {},
            color: Colors.grey,
            child: Text('Click')
          ),
          Container(
            padding: EdgeInsets.all(20.0),
            color: Colors.indigoAccent,
            child: Text('inside the container'),
          )
        ],
      ),*/
      /*body: Center(
        child: IconButton(
          onPressed: () {
            print('Capture');
          },
          icon: Icon(
            Icons.photo_camera,
          ),
        ),*/
        /*icon button
        child: RaisedButton.icon(
          onPressed: () {},
          icon: Icon(
            Icons.cloud,
            color: Colors.white,
          ),
          label: Text('Click') ,
          color: Colors.blueGrey,
        ),*/
        /*icons
        child: Icon(
          Icons.battery_charging_full,
          color: Colors.green[700],
          size: 50.0,
        ),*/
        /*for text and styling
        child: Text(
            'Hello World',
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),*/
        /*for image
        child: Image(
          image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcS3j5lFvBNxsZ7iegdavl1kkW0BiMlfpZUPklfBKUubYxkAhg6o'),
        ),*/

      floatingActionButton: FloatingActionButton(
        onPressed: null,
        child: Text('Click'),
        backgroundColor: Colors.grey[800],
      ),
    );
  }
}
