import 'package:flutter/material.dart';



class SecondScreen extends StatefulWidget {
  @override
  _SecondScreenState createState() => _SecondScreenState();
}

  class _SecondScreenState extends State<SecondScreen> {
    TextEditingController textFieldController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Screen'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(32.0),
              child: TextField(
                controller: textFieldController,
                style: TextStyle(fontSize: 20),
              ),
              
            ),  
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                String textToSendBack = textFieldController.text;
                Navigator.pop(context, textToSendBack);
              },
              child: Text('Go Back'),
            ),
          ],
        ),
      ),
    );
  }
}