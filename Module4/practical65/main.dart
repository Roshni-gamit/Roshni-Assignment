import 'dart:io';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: practical65(),
    );
  }
}

class practical65 extends StatelessWidget {
  const practical65({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        bool exit = await ShowAlertDilog(context) ?? false;

        return exit;
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: Center(
          child: Text('Go Back '),
        ),
      ),
    );
  }
  Future<bool> ShowAlertDilog(BuildContext context) async {
    return await showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          icon: Icon(Icons.person),
          title: Text('Exit'),
          content: Text('Are You Sure To Exit ?'),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context, false),
              child: Text('Cancel'),
            ),
            TextButton(
              onPressed: () => Navigator.pop(context, true),
              child: Text('Exit'),
            ),
          ],
        );
      },
    );
  }
}