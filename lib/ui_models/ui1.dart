import 'package:flutter/material.dart';
import 'package:tutorial/data_model/data.dart';


class uiDash extends StatefulWidget {
  @override
  _uiDashState createState() => _uiDashState();
}

class _uiDashState extends State<uiDash> {
  @override
  Widget build(BuildContext context) {
    return Container(

      height:120 ,
      child: ListView.builder(
        scrollDirection:Axis.horizontal,
        itemBuilder: (context , index){
          return Container(
          child: Row(
            children:[
              Image(
                image:AssetImage(Images.image)
              )
            ]
          ),

          );
        },
        itemCount: 2,
      ),      

      
    );
  }
}