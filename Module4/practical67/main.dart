import 'package:flutter/material.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: practical67(),
    );
  }
}

class practical67 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile and Logout'),
        actions: [
          PopupMenuButton<String>(
            onSelected: (value) {
              if (value == 'profile') {
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      icon: Icon(Icons.person),
                      title: Text('Profile'),
                      content: Text('View your profile here'),
                      actions: [
                        TextButton(
                          onPressed: () => Navigator.pop(context),
                          child: Text('Close'),
                        ),
                      ],
                    );
                  },
                );
              } else if (value == 'logout') {
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      icon: Icon(Icons.person),
                      title: Text('Logout'),
                      content: Text('Are You Sure?'),
                      actions: [
                        TextButton(
                          onPressed: () => Navigator.pop(context),
                          child: Text('Yes'),
                        ),
                        TextButton(
                          onPressed: () => Navigator.pop(context),
                          child: Text('No'),
                        ),
                      ],
                    );
                  },
                );
              }
            },
            itemBuilder: (BuildContext context) {
              return [
                PopupMenuItem<String>(
                  value: 'profile',
                  child: Text('Profile'),
                ),
                PopupMenuItem<String>(
                  value: 'logout',
                  child: Text('Logout'),
                ),
              ];
            },
          ),
        ],
      ),
      body: Center(
        child: Text('Welcome to your profile'),
      ),
    );
  }
}