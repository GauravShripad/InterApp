import 'package:flutter/material.dart';
import 'package:internship_app/screens/home_screen.dart';
void main() => runApp(  MyApp());

class MyApp extends StatelessWidget {
 

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Internapp',
      home: HomeScreen(),
    );
  }
}

