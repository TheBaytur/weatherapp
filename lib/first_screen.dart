import 'package:flutter/material.dart'; 


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
            Navigator.pop(context, 'Hello from First Screen!');
          },
          child: Text('Go Back with Data'),
        ),
      ),
    );
  }
}

