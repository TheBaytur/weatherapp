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
    padding: EdgeInsets.all(10.0),
    //shrinkWrap: true,
    scrollDirection: Axis.horizontal,
    itemExtent: 300.0,
    children: <Widget>[
      ListTile(title: Text('Sunny'),
      subtitle: Text('Today clear'),
      leading: Icon(Icons.wb_sunny),
      iconColor: Colors.amberAccent,
      trailing: Icon(Icons.keyboard_arrow_right, color: Colors.grey),
      ),
      ListTile(title: Text('Cloudy'),
      leading: Icon(Icons.wb_cloudy),
      iconColor: Colors.grey,
      trailing: Icon(Icons.keyboard_arrow_right, color: Colors.grey),
      ),
      ListTile(title: Text('Rainy'),
      leading: Icon(Icons.umbrella),
      iconColor: Colors.blueAccent,
      trailing: Icon(Icons.keyboard_arrow_right, color: Colors.grey),
      ),

      
    ],
  );
}



