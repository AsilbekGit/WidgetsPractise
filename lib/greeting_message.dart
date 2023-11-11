import 'package:flutter/material.dart';

class GreetingMessage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Hello, this is my first app",
        style: TextStyle(
          fontSize: 28,
          fontWeight: FontWeight.bold,
          color: Colors.deepOrangeAccent,
        ),
      ),
    );
  }
}
