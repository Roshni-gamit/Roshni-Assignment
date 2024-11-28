import 'package:flutter/material.dart';

class Screen2 extends StatelessWidget {
  const Screen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen2'),
      ),
      body: Container(child: Center(
        child: Text('Screen2'),
      ),),
    );
  }
}