import 'package:flutter/material.dart';
// import 'package:tutorial/data_call.dart';
// import 'package:tutorial/login_form.dart';
// import 'first.dart';
// import 'media.dart';
// import 'ui_design.dart';
// import 'grid_template.dart'
// import 'orientation.dart';
// import 'package:http/http.dart' as http;
// import 'bottombar.dart';
import 'package:tutorial/ui_models/ui1.dart';

void main() {
  
  runApp( 
    MaterialApp(
      theme: ThemeData(),
      home:MyApp()
  )
 );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
  
      body:uiDash(),
      
    );
  }
}