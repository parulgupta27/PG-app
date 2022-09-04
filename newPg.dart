import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'varibles.dart';
class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  var _fireStore=FirebaseFirestore.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
     Center(child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(padding: EdgeInsets.symmetric(horizontal: 50) ,
        child:Text('Add A New PG',style: TextStyle(color: Colors.white,fontSize: 30,backgroundColor: Colors.blueGrey),),
       ),
        SizedBox(height: 10,),
        Row( mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 180,
              child:
            TextField(
            decoration: InputDecoration(border: OutlineInputBorder(),
            fillColor: Colors.white,
            labelText: 'Name of PG',
            filled: true,
            ),
            onChanged: (value){
              name=value;
            },
            ),),
            SizedBox(width: 20,),
            SizedBox(
              width: 180,
              child:
            TextField(
            decoration: InputDecoration(border: OutlineInputBorder(),
            fillColor: Colors.white,
            labelText: 'Nearest Gate of KU',
            filled: true,
            ),
            onChanged: (value){
              gate=value;
            },
            ),),
          ],
        ),
      SizedBox(height: 25,),
      SizedBox(
              width: 380,
              child:
            TextField(
            decoration: InputDecoration(border: OutlineInputBorder(),
            fillColor: Colors.white,
            labelText: 'Location',
            filled: true,
            ),
            onChanged: (value){
              location=value;
            },
            ),),
      SizedBox(height: 25,),
      Row(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 180,
              child:
            TextField(
            decoration: InputDecoration(border: OutlineInputBorder(),
            fillColor: Colors.white,
            labelText: 'Contact Number',
            filled: true,
            ),
            onChanged: (value){
              number=value;
            },
            ),),
            SizedBox(width: 20,),
            SizedBox(
              width: 180,
              child:
            TextField(
            decoration: InputDecoration(border: OutlineInputBorder(),
            fillColor: Colors.white,
            labelText: 'Fees',
            filled: true,
            ),
            onChanged: (value){
              fees=value;
            },
            ),),
          ],
        ),
        SizedBox(height: 25,),
        Row(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 180,
              child:
            TextField(
          
            decoration: InputDecoration(border: OutlineInputBorder(),
            fillColor: Colors.white,
            labelText: 'Capacity',
            filled: true,
            ),
            onChanged: (value){
              capcity=value;
            },
            ),),
            SizedBox(width: 20,),
            SizedBox(
              width: 180,
              child:
            TextField(
            decoration: InputDecoration(border: OutlineInputBorder(),
            fillColor: Colors.white,
            labelText: 'Distance from University',
            filled: true,
            ),
            onChanged: (value){
              dist=value;
            },
            ),),
          ],
        ),
      Row(mainAxisAlignment: MainAxisAlignment.end,
        children: [
        RaisedButton(onPressed: ()async{
        await _fireStore.collection('pgdata').add({
        'Capacity':capcity,
        'Number':number,
        'Name':name,
        'Dist':dist,
        'Gate':gate,
        'Fees':fees,
        'Location':location,
        },
        );
        },
        color: Colors.white,
        child: Text("Register",style: TextStyle(color: Colors.blueGrey),),),
        SizedBox(width: 40,)
        ],
      ),

      ],
      ),
      ));
  }
}
