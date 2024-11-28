import 'dart:io';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  final _numController = TextEditingController();
  String  result = '';



  void reverseNumber() {
    String input = _numController.text;
    if(input.isNotEmpty){

      String reversed = input.split('').reversed.join();
      setState(() {
        result = reversed;
      });
    }else{

      setState(() {
        result = '';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Reverse Number',
      home: Scaffold(
        backgroundColor: Colors.orange.shade50,
        body: Center(
          child: Container(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  TextField(

                    controller: _numController,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintText: 'Enter a Number',
                      labelText: 'Enter a number',
                      border: OutlineInputBorder(),

                    ),

                  ),

                  SizedBox(height: 20,),
                  ElevatedButton(
                    onPressed: reverseNumber,
                    child: Text('Reverse Number'),
                  ),
                  SizedBox(height: 20,),

                  Text('Reverse number is:$result',
                  style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}