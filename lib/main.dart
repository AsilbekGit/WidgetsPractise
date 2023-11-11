import 'package:flutter/material.dart';
import 'greeting_message.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,

          title: Text('My First App'),
        ),
        body: Center(
          child: Container(
            decoration: BoxDecoration(
              color: Colors.blueGrey,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                GreetingMessage(),
                SizedBox(height: 30),
                CounterWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CounterWidget extends StatefulWidget {
  @override
  _CounterWidgetState createState() => _CounterWidgetState();
}

class _CounterWidgetState extends State<CounterWidget> {
  int _counter = 0;
  String _incrementMessage = '';

  void _incrementCounter() {
    setState(() {
      _counter++;
      _incrementMessage = 'You incremented the value.';
    });
  }

  void _resetCounter() {
    setState(() {
      _counter = 0;
      _incrementMessage = 'You reset the value.';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          'Counter: $_counter',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,
          color: Colors.blueAccent),
        ),
        SizedBox(height: 10),
        Text(
          _incrementMessage,
          style: TextStyle(fontSize: 16),
        ),
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: _incrementCounter,
              child: Text('Increment'),
              style: ElevatedButton.styleFrom(
              primary: Colors.green,
              ),
            ),
            SizedBox(width: 20),
            ElevatedButton(
              onPressed: _resetCounter,
              child: Text('Reset'),
              style: ElevatedButton.styleFrom(
              primary: Colors.red,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
