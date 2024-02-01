import 'package:flutter/material.dart';

 class search_fragment extends StatelessWidget{
 @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: TextField(
          maxLength: 50,
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            hintText: "Enter a search Intem"
          ),
          ),
      )
    ) 
    ;
  }
}