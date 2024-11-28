import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:practical/Module6/screens/splash_screen.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chatter App',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: SplashScreen(),
    );
  }
}



/*
@override
Widget build(BuildContext context) {
  return MaterialApp(
    title: 'Chatter App',
    theme: ThemeData(primarySwatch: Colors.blue),
    home: SplashScreen(),
    routes: {
      '/login': (context) => LoginScreen(),
      '/dashboard': (context) => DashboardScreen(),
    },
  );
}*/
