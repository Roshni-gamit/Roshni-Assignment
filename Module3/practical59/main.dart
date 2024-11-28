import 'package:flutter/material.dart';
import 'package:practical/Module3/practical59/screens/register_page.dart';
import 'package:practical/Module3/practical59/screens/signin_page.dart';


void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyLogin(),
    routes: {
      'register': (context) => MyRegister(),
      'login': (context) => MyLogin(),
    },
  ));
}