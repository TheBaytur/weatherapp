import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      
      
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Weather Application', 
          style: TextStyle(
            color: Colors.black87),
            ),
            centerTitle: true,
          
          backgroundColor: Colors.white,
          leading: IconButton(icon: Icon(Icons.menu), 
          onPressed: () {},
          
          ),
          iconTheme: IconThemeData(color: Colors.black87),
        ),
        body: null,
      ),
    );
  }
}