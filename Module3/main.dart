import 'package:flutter/material.dart';
import 'package:practical/Module3/practicals/homepage.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stack Management',
      initialRoute: '/',
      home: Home(),
    );
  }
}