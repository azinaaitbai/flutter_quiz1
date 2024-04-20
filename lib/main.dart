import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Weather Forecast', style: TextStyle(color: Colors.white)),
          centerTitle: true,
          backgroundColor: Colors.blue.shade900,
        ),
        backgroundColor: Colors.blue.shade100,
        body: _buildBody(),
      ),
    );
  }
}

Widget _buildBody() {
  return SingleChildScrollView(
    child: Column(
      children: [
        SafeArea(
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                _weatherDescription(),
                _temperature(),
                _gradus(),
                _text(),
                _card(),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}

Column _weatherDescription() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: <Widget>[
      Padding(
        padding: const EdgeInsets.only(top: 10),
        child: Row(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: IconButton(
                icon: Icon(Icons.search, size: 47.0),
                onPressed: () {},
                color: Colors.blue,
              ),
            ),
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Enter City Name',
                  hintStyle: TextStyle(color: Colors.white),
                  fillColor: Colors.white,
                  filled: true,
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white, width: 0.0),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white, width: 0.0),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              ),
            ),
          ],
        ),


      ),
      Padding(
        padding: const EdgeInsets.only(top: 10),
        child: Text(
          'Pushkin 154, Taraz',
          style: TextStyle(
            fontSize: 40.0,
            color: Colors.black,
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 2),
        child: Text(
          'Friday, April 19, 2024',
          style: TextStyle(
            color: Colors.blue.shade900,
            fontSize: 20.0,
          ),
        ),
      )
    ],
  );
}

Row _temperature() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Padding(
        padding: const EdgeInsets.only(top: 45),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Icon(
              Icons.wb_sunny,
              color: Colors.yellow,
              size: 100.0,
            ),
          ],
        ),
      ),
      SizedBox(width: 16.0),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 45),
            child: Row(
                children: <Widget>[
                  Text(
                    '14 °F',
                    style: TextStyle(color: Colors.white, fontSize: 45.0),
                  ),
                ]
            ),
          ),
          Row(
              children: <Widget>[
                Text(
                  'LIGHT SNOW',
                  style: TextStyle(color: Colors.black38, fontSize: 28.0),
                ),
              ]
          ),
        ],
      ),
    ],
  );
}


Row _gradus() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: <Widget>[
      SizedBox(width: 47.0),
      Padding(
        padding: const EdgeInsets.only(top: 40),
        child: Column(
          children: <Widget>[
            Icon(
              Icons.ac_unit,
              color: Colors.blue.shade900,
              size:45.0,
            ),
            SizedBox(height: 8.0),
            Text(
              '5',
              style: TextStyle(color: Colors.white, fontSize: 24.0),
            ),
            SizedBox(height: 4.0),
            Text(
              'km/hr',
              style: TextStyle(color: Colors.blue, fontSize: 16.0),
            ),
          ],
        ),
      ),
      SizedBox(width: 70.0),
      Padding(
        padding: const EdgeInsets.only(top: 40),
        child: Column(
          children: <Widget>[
            Icon(
              Icons.ac_unit,
              color: Colors.blue.shade900,
              size: 45.0,
            ),
            SizedBox(height: 8.0),
            Text(
              '3',
              style: TextStyle(color: Colors.white, fontSize: 24.0),
            ),
            SizedBox(height: 4.0),
            Text(
              '%',
              style: TextStyle(color: Colors.blue, fontSize: 16.0),
            ),
          ],
        ),
      ),
      SizedBox(width: 70.0),
      Padding(
        padding: const EdgeInsets.only(top: 40),
        child: Column(
          children: <Widget>[
            Icon(
              Icons.ac_unit,
              color: Colors.blue.shade900,
              size: 45.0,
            ),
            SizedBox(height: 8.0),
            Text(
              '20',
              style: TextStyle(color: Colors.white, fontSize: 24.0),
            ),
            SizedBox(height: 4.0),
            Text(
              '%',
              style: TextStyle(color: Colors.blue, fontSize: 16.0),
            ),
          ],
        ),
      ),
    ],
  );
}

Row _text() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Padding(
        padding: const EdgeInsets.only(top: 40),
        child: Text(
            '7 DAY WEATHER FORECAST',
          style: TextStyle(
            fontSize: 25.0,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
    ],
  );
}

Widget _card() {
  return Row(
    children: [
      SizedBox(
        width: 180,
        height: 100,
        child: Card(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Friday', style: TextStyle(fontSize: 30.0)),
              Text('6 °F', style: TextStyle(fontSize: 20)),
              Icon(Icons.wb_sunny, size: 20, color: Colors.yellow.shade600),
            ],
          ),
        ),
      ),
      SizedBox(width: 20),
      SizedBox(
        width: 140,
        height: 100,
        child: Card(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Saturday', style: TextStyle(fontSize: 30.0)),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('7 °F', style: TextStyle(fontSize: 20)),
                  Icon(Icons.wb_sunny, size: 20, color: Colors.yellow.shade600),
                ],
              ),
            ],
          ),
        ),
      ),
    ],
  );
}
