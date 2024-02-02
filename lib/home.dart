 import 'package:flutter/material.dart';
import 'package:my_app/All_Activity.dart';

class Home extends StatelessWidget {
   Home({super.key});
  
     MySnackBar(message, context) {
    return ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(message)));
  }

  var myItems = [
    {'img':"https://miro.medium.com/v2/resize:fit:1400/1*_S7scqhMXrU6CsAcafAq8g.jpeg",'title':"rmd1"},
    {'img':"https://miro.medium.com/v2/resize:fit:1400/1*_S7scqhMXrU6CsAcafAq8g.jpeg",'title':"rmd2"},
    {'img':"https://miro.medium.com/v2/resize:fit:1400/1*_S7scqhMXrU6CsAcafAq8g.jpeg",'title':"rmd3"},
    {'img':"https://miro.medium.com/v2/resize:fit:1400/1*_S7scqhMXrU6CsAcafAq8g.jpeg",'title':"rmd4"},
    {'img':"https://miro.medium.com/v2/resize:fit:1400/1*_S7scqhMXrU6CsAcafAq8g.jpeg",'title':"rmd5"},
    {'img':"https://miro.medium.com/v2/resize:fit:1400/1*_S7scqhMXrU6CsAcafAq8g.jpeg",'title':"rmd6"},
    {'img':"https://miro.medium.com/v2/resize:fit:1400/1*_S7scqhMXrU6CsAcafAq8g.jpeg",'title':"rmd7"},
    {'img':"https://miro.medium.com/v2/resize:fit:1400/1*_S7scqhMXrU6CsAcafAq8g.jpeg",'title':"rmd8"},
    {'img':"https://miro.medium.com/v2/resize:fit:1400/1*_S7scqhMXrU6CsAcafAq8g.jpeg",'title':"rmd9"},
    {'img':"https://miro.medium.com/v2/resize:fit:1400/1*_S7scqhMXrU6CsAcafAq8g.jpeg",'title':"rmd9"}
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context)=> all_activity()));
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.green,
        elevation: 10,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.camera), label: "Camera"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
        onTap: (int index) {
          if (index == 0) {
            MySnackBar("This is home button", context);
          }
          if (index == 1) {
            MySnackBar("This is camera", context);
          }
          if (index == 2) {
            MySnackBar("This is your profilee", context);
          }
        },
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
                padding: EdgeInsets.all(0),
                child: UserAccountsDrawerHeader(
                  decoration:
                      BoxDecoration(color: Color.fromARGB(255, 255, 255, 255)),
                  accountName: Text(
                    "Abir bin Billal",
                    style: TextStyle(color: Colors.black),
                  ),
                  accountEmail: Text(
                    "Abir41300@gmial.com",
                    style: TextStyle(color: Colors.black),
                  ),
                  currentAccountPicture: Image.network(
                      "https://cdn5.vectorstock.com/i/1000x1000/44/89/hacker-logo-template-vector-20504489.jpg"),
                )),
            ListTile(
              title: Text("Home"),
              leading: Icon(Icons.home),
              onTap: () {
                MySnackBar("On the way to Home!", context);
              },
            ),
            ListTile(
              title: const Text("Contact"),
              leading: const Icon(Icons.contact_mail),
              onTap: () {
                MySnackBar("this is contact", context);
              },
            ),
            ListTile(
              title: Text("Profile"),
              leading: Icon(Icons.person),
              onTap: () {
                MySnackBar("This is a profilee", context);
              },
            ),
            ListTile(
              title: Text("Help"),
              leading: Icon(Icons.help),
              onTap: () {
                MySnackBar("I can help you", context);
              },
            ),
          ],
        ),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount:2,
          childAspectRatio:1.5
          ),
        itemCount: myItems.length,
        itemBuilder: (context , index){
          return GestureDetector(
            onTap: (){MySnackBar(myItems[index]['title'], context);},
            child: Container(
              margin: EdgeInsets.all(7),
              width: double.infinity,
              height: 200,
              child: Image.network(myItems[index]['img']! ,fit: BoxFit.fill,),
            ),
          );
        },
      )
    );

  
  }
}