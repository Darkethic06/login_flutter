import 'package:flutter/material.dart';

class MediaPage extends StatefulWidget {
  @override
  _MediaPageState createState() => _MediaPageState();
}

class _MediaPageState extends State<MediaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Media Page"),
        ),     
        body: Row(children: [
          Container(
            width:MediaQuery.of(context).size.width * 0.4,
             //percentage ration screen(0.3 , that means 30% of the screen ratio. )
             // 0.2 defines 20% of the screen ratio
            decoration: BoxDecoration(
              color:Colors.red,
            ),
          ),
          Container(
            width: 200,
            decoration: BoxDecoration(
              color:Colors.blueGrey,
            ),
          ),
        ],),
    );
  }
}