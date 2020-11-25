import 'package:flutter/material.dart';
// import 'package:tutorial/login_form.dart';
// import 'first.dart';
import 'media.dart';

void main() {
  
  runApp( 
    MaterialApp(
      home:MyApp()
  )
 );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:MediaPage(),
      
    );
  }
}