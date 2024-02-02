import 'package:flutter/material.dart';
import 'package:my_app/home.dart';
import 'package:my_app/main.dart';

class activity_one extends StatelessWidget{

String msg;

   activity_one(
    this.msg,
    {super.key});

  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(msg),
      ),
      body: Center(
        child: Text("Welcome to  Activity one"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> HomeActivity()));} , 
        child: Icon(Icons.home),
        backgroundColor: Colors.green,),
    );
  }
}