import 'package:flutter/material.dart';
import 'package:tutorial/login_form.dart';

class build_orientation extends StatefulWidget {
  @override
  _build_orientationState createState() => _build_orientationState();
}

class _build_orientationState extends State<build_orientation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:OrientationBuilder(
        builder:(context, orientation){
          if(orientation == Orientation.portrait){
            return login_form();
          }else{
            return login_form();
          }
        },
      ) ,
      
    );
  }
}