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
            style: TextStyle(color: Colors.black87),
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
          leading: IconButton(icon: Icon(Icons.menu), onPressed: () {}),
          iconTheme: IconThemeData(color: Colors.black87),
          actions: [IconButton(icon: Icon(Icons.settings), onPressed: () {})],
        ),

        body: BodyListView(),
        
      ),
    );
  }
}

class BodyListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _myListView();
  }
}

Widget _myListView() {
  return ListView(
    children: <Widget>[
      ListTile(title: Text('Sunny')),
      ListTile(title: Text('Cloudy')),
      ListTile(title: Text('Rainy')),

      
    ],
  );
}



