import 'package:flutter/material.dart';   
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(32.0),
              child: Text(text, style: TextStyle(fontSize: 20),
              ),
            ),
            ElevatedButton(
          child: Text('Go to Second Screen'),
          onPressed: () {
            _returnDataFromSecondScreen(context);
          },
          
        ),
          ],
      ),
      ),
    );
  }

void _returnDataFromSecondScreen(BuildContext context) async{
  Route route = MaterialPageRoute(
              builder: (context) => SecondScreen());
            final result = await Navigator.push(context, route);

            setState(() {
              text = result;
            });
}
}

