import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';


class data_call extends StatefulWidget {
@override

  _data_callState createState() => _data_callState();
 }

class _data_callState extends State<data_call> {
  
var url = "http://jsonplaceholder.typicode.com/photos";

  var data;

  fetchData() async{   //non-blocking
    var res = await http.get(url);
    data =jsonDecode(res.body);
    setState((){});
  }

  

  void initState(){
    super.initState();
    fetchData();
  }    

void dispose(){
  super.dispose();
}



  @override
  Widget build(BuildContext context) {
    return Scaffold(

        appBar: AppBar(
          title: Text("Data Method"),
        ),
      body: data != null
      ? ListView.builder(
        itemBuilder: (context , index){
          return ListTile(
            title:Text(data[index]["title"]) ,
            leading: Image.network(data[index]["thumbnailUrl"]),
              
          );

        },
        itemCount:data.length ,
      )
      :Center(
        child: CircularProgressIndicator(),
      ),

      
    );
  }
}