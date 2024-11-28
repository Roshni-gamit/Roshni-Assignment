import 'package:flutter/material.dart';
import 'package:practical/Module4/practical70_71/screen/photo_screen.dart';




void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bottom Navigation Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Question70(),
    );
  }
}

class Question70 extends StatefulWidget {
  @override
  _Question70State createState() => _Question70State();
}

class _Question70State extends State<Question70> {
  int _selectedIndex = 0;

  List<Widget> _widgetOptions = <Widget>[
    Photos(),
    Center(
      child: Text("Audio"),
    ),
    Center(
      child: Text("Video"),
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Gallery'),),
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.image),
            label: 'Gallery',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.audiotrack),
            label: 'Audio',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.videocam),
            label: 'Video',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        onTap: _onItemTapped,
      ),
      drawer: Drawer(),
    );
  }
}