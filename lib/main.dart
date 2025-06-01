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
  final List<String> items = List<String>.generate(10000, (index) => 'Item $index');
  return ListView.builder(
    itemCount: items.length,
    itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              title: Text('${items[index]}'),
              subtitle: Text('Subtitle for ${items[index]}'),
              leading: Icon(Icons.cloud, color: Colors.blue),
              trailing: Icon(Icons.arrow_forward_ios, color: Colors.grey),
            ),
          );

    },
    
    
  );
}



