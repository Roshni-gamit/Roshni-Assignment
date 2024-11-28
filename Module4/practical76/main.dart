import 'package:flutter/material.dart';

class Main extends StatelessWidget {
  final int output;

  Main({required this.output});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Center(child: Text('Ans : $output',style: TextStyle(fontSize: 25),),
        ));
  }
}