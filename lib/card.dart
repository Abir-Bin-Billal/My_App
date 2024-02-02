import 'package:flutter/material.dart';
import 'package:my_app/main.dart';

class card extends StatelessWidget{
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Card(
          color: Colors.green,
          shadowColor: Colors.green,
          elevation: 80,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),

          child: SizedBox(
            height: 200 ,
            width: 200 , 
            child: Center(child: Text("Full card",
            style: TextStyle(
              color: Colors.red
            ),),)
          ),
        ),
      ),
       floatingActionButton: FloatingActionButton(
        onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> HomeActivity()));} ,
         child: Icon(Icons.home) , 
         backgroundColor: Colors.green,),
    );
  }
}