import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';

class FirstPage extends StatefulWidget {

  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  // this is a bool type variable
  bool _secureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
      Container(
        child: Center(
          child: TextField(
              decoration: InputDecoration(
                hintText: "Password",
                labelText: "Passowrd",
                labelStyle: TextStyle(
                  fontSize:25.0,
                ),
                border: OutlineInputBorder(),
                suffixIcon: IconButton(
                  icon:Icon(
                    _secureText ? Icons.remove_red_eye 
                                : Icons.security), //this is for icon integration
                                

                onPressed: (){
                    setState(() {
                      _secureText = !  _secureText; //this is for flase integration
                    });
                    
                  },
                  
                  
                ),
               
                ),
              obscureText: _secureText,
               maxLength: 10,
              
          ),
        ),
      ),
    );
  }
}