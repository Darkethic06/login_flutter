import 'package:flutter/material.dart';

class Grid_template extends StatefulWidget {
  @override
  _Grid_templateState createState() => _Grid_templateState();
}

class _Grid_templateState extends State<Grid_template> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:GridView.count(
  // primary: false,
  padding: const EdgeInsets.all(20),
  crossAxisSpacing: 10,
  mainAxisSpacing: 10,
  crossAxisCount: 3,
  children: <Widget>[
    Container(
      padding: const EdgeInsets.all(8),
      child: const Text("He'd have you all unravel at the"),
      color: Colors.lightBlue[100],
    ),
    Container(
      padding: const EdgeInsets.all(8),
     
      color: Colors.teal[200],
    ),
    Container(
      padding: const EdgeInsets.all(8),
      // child: const Text('Sound of screams but the'),
      color: Colors.yellow[200],
    ),
    Container(
      padding: const EdgeInsets.all(8),
      // child: const Text('Who scream'),
      color: Colors.black,
    ),
    Container(
      padding: const EdgeInsets.all(8),
      // child: const Text('Revolution is coming...'),
      color: Colors.blue,
    ),
    Container(
      padding: const EdgeInsets.all(8),
      // child: const Text('Revolution, they...'),
      color: Colors.red,
    ),
  ],
)
    );
  }
}