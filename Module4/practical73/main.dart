import 'dart:async';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Material App', home: Practical73());
  }
}

class Practical73 extends StatefulWidget {
  const Practical73({super.key});

  @override
  State<Practical73> createState() => _Practical73State();
}

class _Practical73State extends State<Practical73> {
  @override
  void initState() {
    super.initState();

    Timer(Duration(seconds: 2), () {
      // this block will execute after three seconds
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => HomeScreen(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('image/p2.jpg'),
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                'Welcome',
                style: TextStyle(color: Colors.black, fontSize: 24),
              ),
            ],
          )),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Home Screen'),
      ),
    );
  }
}