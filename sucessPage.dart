import 'package:flutter/material.dart';
import 'package:pg_near_kuk/main.dart';
import 'package:pg_near_kuk/pgBox.dart';
import 'varibles.dart';
class Success extends StatelessWidget {
  const Success({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
        MyPG(name, gate, number, fees, capcity, dist, location),
        Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
          Text('SUCCESS',style: TextStyle(color: Colors.white,fontSize: 10),)
          ]),
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            color: Colors.blueGrey,
            borderRadius: BorderRadius.circular(300),
          ),
        )
        ]),
      );
  }
}