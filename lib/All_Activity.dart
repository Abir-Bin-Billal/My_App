import 'package:flutter/material.dart';
import 'package:my_app/Activity1.dart';
import 'package:my_app/Activity2.dart';
import 'package:my_app/card.dart';

class all_activity extends StatelessWidget {
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("All activity is here"),
      ),
      body: Align(
        
        alignment: Alignment.center,
       child : Column(
      
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        

        children: [
        
        ElevatedButton(
          onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> activity_one("from home to activity one")));}, 
          child: Text("Activity one")),
        ElevatedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> activity_two("From home to activity two")));}, 
        child: Text("Activity Two")),
        ElevatedButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=> card()));
        }, child: Text("Card"))
        
        ],
      )
    )
    );
  }
}