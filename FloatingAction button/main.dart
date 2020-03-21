import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(title: "FloatingButton", home: MainActivity()));

class MainActivity extends StatefulWidget {
  @override
  _MainActivityState createState() => _MainActivityState();
}

class _MainActivityState extends State {
  String msg = 'Flutter FloatingButton Example';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Floating Action Button'),
      ),
      body: Center(
          child: const Text('Press the button below!')
      ),
      floatingActionButton: FloatingActionButton(
        onPressed:  _changeText,
        child: Icon(Icons.navigation),
        backgroundColor: Colors.green,
      ),
    );
  }

  _changeText() {
    setState(() {
      if (msg.startsWith('F')) {
        msg = 'I have learned FloatingButton';
      } else {
        msg = 'Flutter FloatingButton Example';
      }
    });
  }
}