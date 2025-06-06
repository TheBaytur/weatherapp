import 'package:flutter/material.dart'; 
import 'first_screen.dart';
import 'second_screen.dart';


class FirstScreen extends StatefulWidget {
  @override
  _FirstScreenState createState() => _FirstScreenState();
  
}

class _FirstScreenState extends State<FirstScreen> {
  String text = 'Hello from First Screen!';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Screen'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Route route = MaterialPageRoute(
              builder: (context) => SecondScreen(data: text),
            );
            Navigator.push(context, route);
          },
          child: Text('Go Back with Data'),
        ),
      ),
    );
  }
}

