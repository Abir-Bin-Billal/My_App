import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: HomeActivity(),
    debugShowCheckedModeBanner: false);
  }
}

class HomeActivity extends StatelessWidget {
  const HomeActivity({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("This a app bar" , 
        style: TextStyle(color: Colors.white),),
        backgroundColor: const Color.fromARGB(255, 3, 3, 3),
      ),
    );
      
  
  }
}
