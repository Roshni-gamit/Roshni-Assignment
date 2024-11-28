import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  var mRandomColors =[
    Colors.deepOrange,
    Colors.white,
    Colors.green,
    Colors.blue,
    Colors.amberAccent,
    Colors.cyan.shade200,
    Colors.purple.shade500,
    Colors.teal,
  ];

  var defaultColor = Colors.white;
  applyRandomColor(){

    var rndColor = Random().nextInt(mRandomColors.length);
    setState(() {
      defaultColor = mRandomColors[rndColor];
    });

  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BackGround color changed',
      home: Scaffold(
        backgroundColor: Colors.orange.shade50,
        body: Center(
            child: Container(
              color: defaultColor,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Center(
                      child: Container(
                        margin: EdgeInsets.only(bottom: 20.0,),
                        padding: EdgeInsets.all(4.0),
                        child: ElevatedButton(
                          onPressed: applyRandomColor,
                          child: Text(' Change BackGround',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontStyle: FontStyle.italic ,
                              fontWeight: FontWeight.normal,
                            ),),
                          style: ButtonStyle(
                            elevation: MaterialStateProperty.all(8.0),
                            padding: MaterialStateProperty.all(
                              EdgeInsets.fromLTRB(50, 15, 50, 15),
                            ),
                            backgroundColor: MaterialStateProperty.all(Colors.black87),
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30.0)  ,              )
                            ),
                          ),
                        ),
                      ),
                    ),
                  ]
              ),
            )
        ),
      ),
    );
  }
}
