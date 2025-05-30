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
        body: _buildBody(),
      ),
    );
  }
}

Widget _buildBody() {
  return SingleChildScrollView(
    child: Column(
      children: <Widget>[
        _headerImage(),
        SafeArea(
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[_weatherDescription(), 
              Divider(),
              _temperature(),
              Divider(),
              _temperatureForecast(),
              Divider(),
              _footerRatings(),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}

Image _headerImage() {
  return Image(
    image: NetworkImage(
      'https://media.istockphoto.com/id/503801863/photo/rainbow-over-countryside.jpg?s=1024x1024&w=is&k=20&c=yAUrTQ8vg-CGz7pW1d7MlYcqKs-kHd313lUUUslWY48=',
    ),
    fit: BoxFit.cover,
    width: double.infinity,
    height: 200.0,
  );
}

Column _weatherDescription() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: <Widget>[
      Text(
        'Friday, 30 May',
        style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
      ),
      Divider(),
      Text(
        'Sunny, 25°C',
        style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
      ),
    ],
  );
}

Row _temperature() {
  return Row(
    children: <Widget>[
      Column(children: <Widget>[Icon(Icons.wb_sunny, color: Colors.amber)]),
      SizedBox(width: 16.0),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            children: <Widget>[
              Text('30°C Clear', style: TextStyle(color: Colors.deepPurple)),
            ],
          ),
          Row(
            children: <Widget>[
              Text(
                'Manila city, Philippines',
                style: TextStyle(color: Colors.blue),
              ),
            ],
          ),
        ],
      ),
    ],
  );
}

Wrap _temperatureForecast() {
  return Wrap(
    spacing: 10.0,
    
    children: 
      List.generate(8, (int index) {
        return Chip(
          label: Text('${index + 5}°C',
            style: TextStyle(fontSize: 16.0, color: Colors.black87, fontWeight: FontWeight.bold),
          ),
          avatar: Icon(
             Icons.wb_cloudy,
             color: Colors.blue,
             ),
             shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
            side: BorderSide(color: Colors.blueGrey),
             ),
             backgroundColor: Colors.grey.shade200,
        );

      }
      ),
     
    
  );
}

Row _footerRatings() {
  var stars = Row(
    children: <Widget>[
      Icon(Icons.star, size: 15.0,  color: Colors.amber),
      Icon(Icons.star, size: 15.0,color: Colors.amber),
      Icon(Icons.star, size: 15.0,color: Colors.amber),
      Icon(Icons.star, size: 15.0,color: Colors.black),
      Icon(Icons.star, size: 15.0,color: Colors.black),
    ],
  );
  return Row(children: <Widget>[
    Text ('Info with openweathermap.org', style: TextStyle(
      fontSize: 15.0,
      color: Colors.black87,
      fontWeight: FontWeight.bold,
    ),
    ),
    stars,

  ],
  );
}
