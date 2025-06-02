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
  final List<ListItem> items = List<ListItem>.generate(
    10000, 
  (i) => i % 6 == 0 
      ? HeadingItem('Heading $i')
      : MessageItem('Message $i', 'Message content for this $i'));

  return ListView.builder(
    itemCount: items.length,
    itemBuilder: (context, index) {
          // return Card(
          //   child: ListTile(
          //     title: Text('${items[index]}'),
          //     subtitle: Text('Subtitle for ${items[index]}'),
          //     leading: Icon(Icons.cloud, color: Colors.blue),
          //     trailing: Icon(Icons.arrow_forward_ios, color: Colors.grey),
          //   ),
          // );
    },
  );
}

  abstract class ListItem {}



class HeadingItem implements ListItem {
  final String heading;
  HeadingItem(this.heading);

}

class MessageItem implements ListItem {
  final String sender;
  final String body;

  MessageItem(this.sender, this.body);
}




