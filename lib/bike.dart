import 'package:flutter/material.dart';




MySnackBar(message, context) {
    return ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(message)));
  }

  var mybikeItems = [
    {'img':"https://imgd.aeplcdn.com/370x208/n/cw/ec/43482/sp-125-right-front-three-quarter-2.jpeg?isig=0&q=80",'title':"supra"},
    {'img':"https://imgd.aeplcdn.com/370x208/n/cw/ec/43482/sp-125-right-front-three-quarter-2.jpeg?isig=0&q=80",'title':"supra"},
    {'img':"https://imgd.aeplcdn.com/370x208/n/cw/ec/43482/sp-125-right-front-three-quarter-2.jpeg?isig=0&q=80",'title':"supra"},
    {'img':"https://imgd.aeplcdn.com/370x208/n/cw/ec/43482/sp-125-right-front-three-quarter-2.jpeg?isig=0&q=80",'title':"supra"},
    {'img':"https://imgd.aeplcdn.com/370x208/n/cw/ec/43482/sp-125-right-front-three-quarter-2.jpeg?isig=0&q=80",'title':"supra"},
    {'img':"https://imgd.aeplcdn.com/370x208/n/cw/ec/43482/sp-125-right-front-three-quarter-2.jpeg?isig=0&q=80",'title':"supra"},
    {'img':"https://imgd.aeplcdn.com/370x208/n/cw/ec/43482/sp-125-right-front-three-quarter-2.jpeg?isig=0&q=80",'title':"supra"},
    {'img':"https://imgd.aeplcdn.com/370x208/n/cw/ec/43482/sp-125-right-front-three-quarter-2.jpeg?isig=0&q=80",'title':"supra"},
    {'img':"https://imgd.aeplcdn.com/370x208/n/cw/ec/43482/sp-125-right-front-three-quarter-2.jpeg?isig=0&q=80",'title':"supra"},
    {'img':"https://imgd.aeplcdn.com/370x208/n/cw/ec/43482/sp-125-right-front-three-quarter-2.jpeg?isig=0&q=80",'title':"supra"},
  
  ];

class bike extends StatelessWidget{
 @override
 @override
 Widget build(BuildContext context) {
   return Container(
    child: Scaffold(
      appBar: AppBar(title: Text("Here u can rent bike")),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 2
          ), 
          itemCount: mybikeItems.length,
        itemBuilder: (context , index){
          return GestureDetector(
            onTap: (){MySnackBar(mybikeItems[index]['title'], context);},
            child: Container(
              margin: EdgeInsets.all(7),
              width: double.infinity,
              height: 200,
              child: Image.network(mybikeItems[index]['img']! ,fit: BoxFit.fill,),
            ),
          );
        }
        
        ),
    )
  );
 } 
  
  
  
  }



