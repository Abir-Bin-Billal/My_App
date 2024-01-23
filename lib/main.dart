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
  const HomeActivity({super.key});
  MySnackBar(message, context) {
    return ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(message)));
  }

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
      endDrawer: Drawer(
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
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          TextButton(onPressed: (){MySnackBar("This is text button", context);},  child: Text("Text button")),
          ElevatedButton(onPressed: (){MySnackBar("This a  an elevated button", context);}, child: Text("Elevated Button"),style: buttonStyle,),
          OutlinedButton(onPressed: (){MySnackBar("This a is an OutlinedButton", context);}, child: Text("Outlined"))
        ],
      )
    );
  }
}
