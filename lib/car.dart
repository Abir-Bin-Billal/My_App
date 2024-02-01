import 'package:flutter/material.dart';
import 'package:my_app/main.dart';

class car extends StatelessWidget{
@override


var mycarItems = [
    {'img':"https://mir-s3-cdn-cf.behance.net/projects/404/1c5eb3180885249.Y3JvcCwxMDgwLDg0NSwxNzMsODA3.jpg",'title':"supra"},
    {'img':"https://imgd.aeplcdn.com/664x374/n/cw/ec/116201/c-class-exterior-right-front-three-quarter-3.jpeg?isig=0&q=80",'title':"Marcedes"},
    {'img':"https://imgd.aeplcdn.com/664x374/n/cw/ec/136217/x7-exterior-right-front-three-quarter-8.jpeg?isig=0&q=80",'title':"Bmw"},
    {'img':"https://imgd.aeplcdn.com/664x374/n/cw/ec/136217/x7-exterior-right-front-three-quarter-8.jpeg?isig=0&q=80",'title':"toyota"},
    {'img':"https://miro.medium.com/v2/resize:fit:1400/1*_S7scqhMXrU6CsAcafAq8g.jpeg",'title':"mazda"},
    {'img':"https://imgd.aeplcdn.com/664x374/n/cw/ec/136217/x7-exterior-right-front-three-quarter-8.jpeg?isig=0&q=80",'title':"hyudi"},
    {'img':"https://mir-s3-cdn-cf.behance.net/projects/404/1c5eb3180885249.Y3JvcCwxMDgwLDg0NSwxNzMsODA3.jpg",'title':"nissan"},
    {'img':"https://imgd.aeplcdn.com/664x374/n/cw/ec/136217/x7-exterior-right-front-three-quarter-8.jpeg?isig=0&q=80",'title':"bugatti"},
    {'img':"https://miro.medium.com/v2/resize:fit:1400/1*_S7scqhMXrU6CsAcafAq8g.jpeg",'title':"lemborghini"},
    {'img':"https://mir-s3-cdn-cf.behance.net/projects/404/1c5eb3180885249.Y3JvcCwxMDgwLDg0NSwxNzMsODA3.jpg",'title':"Ami"}
  ];


MySnackBar(message, context) {
    return ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(message)));
  }











Widget build(BuildContext context) {
  return Container(
    child: Scaffold(
      appBar: AppBar(title: Text("Here u can booked car's")),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 2
          ), 
          itemCount: mycarItems.length,
        itemBuilder: (context , index){
          return GestureDetector(
            onTap: (){MySnackBar(mycarItems[index]['title'], context);},
            child: Container(
              margin: EdgeInsets.all(7),
              width: double.infinity,
              height: 200,
              child: Image.network(mycarItems[index]['img']! ,fit: BoxFit.fill,),
            ),
          );
        }
        
        ),
    )
  );
}

}