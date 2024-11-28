import 'package:flutter/material.dart';

import '../main.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Practical74(),
    );
  }
}
class Practical74 extends StatelessWidget {
  const Practical74({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen1'),
      ),
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Screen1'),
              SizedBox(height: 20,),
              ElevatedButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Screen2(),));
              }, child: Text('Click To Next Activity'),
              )
            ],
          ),
        ),
      ),
    );
  }
}