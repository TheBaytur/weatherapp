import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: FirstHome(),
  ));
}

class FirstHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'First Page',
            style: TextStyle(color: Colors.black87),
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: (){
              User user = User(name: 'John Doe', age: 30);
              Route route = MaterialPageRoute(
                builder: (context) => SecondPage(user: user),
              );
            Navigator.push(context, route);
            },
            child: Text('Go to Second Page'),
          ),
        ),
      ),
      // initialRoute: '/second',
       //routes: {'/second': (context) => SecondPage()},
    );
  }
}

class SecondPage extends StatelessWidget {
  final User user;
  SecondPage({required this.user});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '${this.user.name} - ${this.user.age}',
          style: TextStyle(color: Colors.black87),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Go Back to First Page'),
        ),
      ),
    );
  }
}

class User {
  String name;
  int age;

  User({required this.name, required this.age});
}
