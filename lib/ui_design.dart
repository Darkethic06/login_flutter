import 'package:flutter/material.dart';


class UiDesign extends StatefulWidget {
  @override
  _UiDesignState createState() => _UiDesignState();
}

class _UiDesignState extends State<UiDesign> {
String title = "DropDown";
 var dropdownvalue = "Choose Your Name";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
    body: Container(
      child: Center(
        child: Column(
          children: [
            RaisedButton(
              child: Text("This is for Our Snack Bar"),
              onPressed: (){
              showSnackBar(context, "This is snackbar", 3000);
              },
            ),
            DropdownButton(
              value : dropdownvalue,
              icon: Icon(Icons.arrow_downward),
              onChanged: (String newValue){
                setState(() {
                  dropdownvalue = newValue;
                });
              },
              items: [
                'Suranjan','Samar','Arup','Arijit'
              ].map((String value){
                return DropdownMenuItem(
                  value: value ,
                  child:Text(value)
                );

              }).toList(),

            ),
            PopupMenuButton(
              itemBuilder: (context) =>[
                PopupMenuItem(
                  value :"",
                  child: Text("Suranjan"),
                ),
                PopupMenuItem(
                  value :"",
                  child: Text("Samar"),
                ),
                PopupMenuItem(
                  value :"",
                  child: Text("Arup"),
                ),
              ] ,
            )
          ],
        ),
      ),
    ),

    );
  }

  void showSnackBar(BuildContext context, String message , int duration){
    Scaffold.of(context).showSnackBar(SnackBar(
      content: Text(message),
      duration: Duration(milliseconds:duration),
    ));

  }

}