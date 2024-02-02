import 'package:flutter/material.dart';
import 'package:my_app/home.dart';
import 'package:my_app/main.dart';

class activity_two extends StatelessWidget{
  String msg;
 activity_two(this.msg , {super.key});

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(msg),
      ),
      body: Center(
        child: Text("Welcome to  Activity two"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> HomeActivity()));} ,
         child: Icon(Icons.home) , 
         backgroundColor: Colors.green,),
    );
  }
}