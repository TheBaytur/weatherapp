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
          actions: [
            IconButton(
              icon: Icon(Icons.settings),
              onPressed: () {},
            ),
          ],
        ),
        body: _buildBody(),
      ),
    );
  }
}

Widget _buildBody() {
  return SingleChildScrollView(
    child: Column(
      children: <Widget> [
        _headerImage(),
      ],
    ),
  );
}

Image _headerImage () {
  return Image(
    image: NetworkImage('https://media.istockphoto.com/id/503801863/photo/rainbow-over-countryside.jpg?s=1024x1024&w=is&k=20&c=yAUrTQ8vg-CGz7pW1d7MlYcqKs-kHd313lUUUslWY48='),
    fit: BoxFit.cover,
    width: double.infinity,
    height: 200.0,
  );
}