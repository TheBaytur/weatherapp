import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: FirstHome(),
    routes: {
      '/first': (context) => FirstHome(),
      '/second': (context) => SecondPage(),

    },
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
              
            Navigator.pushNamed(context, '/second', arguments: user);
            },
            child: Text('Go to Second Page'),
          ),
        ),
      ),      
    );
  }
}

class SecondPage extends StatelessWidget {
  late User user;
  
  @override
  Widget build(BuildContext context) {
    RouteSettings settings = ModalRoute.of(context)!.settings; //only if route has arguments
    user = settings.arguments as User;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '${user.name} - ${user.age}',
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
