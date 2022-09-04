import 'package:flutter/material.dart';
import 'newPg.dart';
class AddNew extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        Material(
        elevation: 8,
        child: Container(
          width: 300,
          child: Padding(padding: EdgeInsets.symmetric(horizontal: 40,vertical: 20),
          child: FlatButton(child: Text("Add a New PG",style: TextStyle(color: Colors.blueGrey,fontSize: 30),),
          onPressed: (){
          Navigator.pushNamed(context, '/registerPG');
          },
          )
          ),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.blueGrey,width: 1),
          ),
        ),
        ),
        SizedBox(height: 30,),
        Material(
          elevation: 8,
          child: Container(
            width: 300,
            child: Padding(padding: EdgeInsets.symmetric(horizontal: 40,vertical: 20),
          child: FlatButton(child: Text("Add a New Tiffin Service",style: TextStyle(color: Colors.blueGrey,fontSize: 30),),
          onPressed: (){
          },
          )
          ),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.blueGrey,width: 1),
          ),
          ),
        ),
      ],),
    );
  }
}