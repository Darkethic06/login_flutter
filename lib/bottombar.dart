import'package:flutter/material.dart';


class MyBar extends StatefulWidget {
  @override
  _MyBarState createState() => _MyBarState();
}

class _MyBarState extends State<MyBar> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: Text("Hello World"),
      ),
   bottomNavigationBar: BottomNavigationBar(
     items:[
       BottomNavigationBarItem(
         icon: Icon(Icons.home),
         label:"Home",
       ),
       BottomNavigationBarItem(
         icon: Icon(Icons.camera),
         label:"Camera",
       ),
       BottomNavigationBarItem(
         icon: Icon(Icons.search),
         label:"Search",
       )
     ],
     onTap: (index){
       setState((){
         index = index;
       });
     },
   ), 
      
    );
  }
}