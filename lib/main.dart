import 'package:flutter/material.dart';

void main() {
  runApp(const myApp());
}

class myApp extends StatelessWidget {
  const myApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Varela',
        textTheme: Theme.of(context).textTheme.apply(fontFamily: 'Vaerla'),
      ),
      home: HomeActivity(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomeActivity extends StatelessWidget {
   HomeActivity({super.key});
  MySnackBar(message, context) {
    return ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(message)));
  }
  MyAlertdialouge(context){
    return showDialog(
      context: context, 
      builder: (BuildContext context){

return Expanded(
  child: AlertDialog(
    title: Text('Alert!'),
    content: Text('Are u sure to to submit?'),
    actions: [
      ElevatedButton(onPressed: (){MySnackBar("submitted Successfully", context);Navigator.of(context).pop();}, child: Text("Yes"),
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.blue
      ),),
      ElevatedButton(onPressed: (){Navigator.of(context).pop();}, child: Text('No'),
      style: ElevatedButton.styleFrom(backgroundColor: Colors.blue,))
    ],
  ) 
  );
      });
  }
  ButtonStyle buttonStyle = ElevatedButton.styleFrom(
    minimumSize: Size(double.infinity, 60),
    maximumSize: Size(double.infinity, 60)
  );
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
   ButtonStyle buttonStyle=ElevatedButton.styleFrom(
    padding: EdgeInsets.all(20),
    backgroundColor: Colors.black,
    foregroundColor: Color.fromARGB(255, 255, 255, 255),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(50)
    )
   );
    return Scaffold(
      appBar: AppBar(
        title: const Text("This is app bar"),
        titleSpacing: 10,
        backgroundColor: Colors.green,
        elevation: 0,
        toolbarOpacity: 1,
        toolbarHeight: 60,
        actions: [
          IconButton(
              onPressed: () {
                MySnackBar("This is a comment!", context);
              },
              icon: Icon(Icons.comment)),
          IconButton(
              onPressed: () {
                MySnackBar('This is a search', context);
              },
              icon: Icon(Icons.search)),
          IconButton(
              onPressed: () {
                MySnackBar("this is a email", context);
              },
              icon: Icon(Icons.email)),
          IconButton(
              onPressed: () {
                MySnackBar("This a a bike", context);
              },
              icon: Icon(Icons.pedal_bike_outlined)),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          MySnackBar('Something added', context);
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
