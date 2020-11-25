import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';



class login_form extends StatefulWidget {
  @override
  _login_formState createState() => _login_formState();
}

class _login_formState extends State<login_form> {

GlobalKey<FormState> _formkey = GlobalKey<FormState>();
void validate(){
  if (_formkey.currentState.validate()){
    print("Valid");
  }else{
    print("not valid");
  }
}
  @override



  Widget build(BuildContext context) {
    return Scaffold(
       body: Container(
         child: Center(
           child:Form(
             key: _formkey,
            // autovalidate: true,
             child:Column(
               children: [
                 TextFormField(
                    decoration: InputDecoration(
                labelText: "Name",
                labelStyle: TextStyle(
                  fontSize:25.0,
                ),
                border: OutlineInputBorder(),
                    ),
                   validator: (val){
                     if(val.isEmpty){
                       return "Not Valid";
                     }else{
                       return null;
                     }
                   },
                 ),
                 TextFormField(
                    decoration: InputDecoration(
                labelText: "Email",
                labelStyle: TextStyle(
                  fontSize:25.0,
                ),
                border: OutlineInputBorder(),
                    ),
                   validator: (val){
                     if(val.isEmpty){
                       return "Not Valid";
                     }else{
                       return null;
                     }
                   },
                 ),
                 RaisedButton(
                   child:Text("Login"),
                  onPressed: validate,
                 ),

             ],
             ),

           ),
         ),

       ),
      
      
    );
  }
  
}


