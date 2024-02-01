import 'package:flutter/material.dart';
import 'package:my_app/bike.dart';
import 'package:my_app/call.dart';
import 'package:my_app/car.dart';
import 'package:my_app/contact.dart';
import 'package:my_app/home.dart';
import 'package:my_app/search-fragment.dart';

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
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6, 
      child: Scaffold(
        appBar: AppBar(
          title: Text('My App',),
          backgroundColor: Colors.blue,
          bottom: TabBar(
            isScrollable: true,
            tabs: [
              Tab(icon: Icon(Icons.home) ,text: "Home",),
              Tab(icon: Icon(Icons.search),text: "Search"),
              Tab(icon: Icon(Icons.contact_emergency),text: "Contact"),
              Tab(icon: Icon(Icons.call),text: "Call"),
              Tab(icon: Icon(Icons.card_travel),text: "Car"),    
              Tab(icon: Icon(Icons.bike_scooter),text: "Bike")
            ]
            ),
          ),
          body: TabBarView(
            children: [
              Home(),
              search_fragment(),
              contact(),
              call(),
              car(),
              bike()
          ]
          ),
      )
      );

  }
}

