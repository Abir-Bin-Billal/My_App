import 'package:flutter/material.dart';

void main() {
  runApp(const myApp());
}

class myApp extends StatelessWidget {
  const myApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
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
    return Scaffold(
      appBar: AppBar(
        title: const Text("This is app bar"),
        titleSpacing: 10,
        backgroundColor: Colors.green,
        elevation: 0,
        toolbarOpacity: 1,
        toolbarHeight: 60,
        actions: [
          IconButton(onPressed: () {MySnackBar("This is a comment!", context);}, icon: Icon(Icons.comment)),
          IconButton(onPressed: () {MySnackBar('This is a search', context);}, icon: Icon(Icons.search)),
          IconButton(onPressed: () {MySnackBar("this is a email", context);}, icon: Icon(Icons.email)),
          IconButton(onPressed: () {MySnackBar("This a a bike", context);}, icon: Icon(Icons.pedal_bike_outlined)),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){MySnackBar('Something added',context);},
        child: Icon(Icons.add),
        backgroundColor: Colors.green,
        elevation: 10,
        
        
        ),
      backgroundColor: Colors.white,
    );
  }
}
