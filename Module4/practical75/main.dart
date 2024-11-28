import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lifecycle Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LifecycleDemo(),
    );
  }
}

class LifecycleDemo extends StatefulWidget {
  @override
  _LifecycleDemoState createState() => _LifecycleDemoState();
}

class _LifecycleDemoState extends State<LifecycleDemo> with WidgetsBindingObserver {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    showToast("Initialized");
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    showToast("Disposed");
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    switch (state) {
      case AppLifecycleState.resumed:
        showToast("Resumed");
        break;
      case AppLifecycleState.inactive:
        showToast("Inactive");
        break;
      case AppLifecycleState.paused:
        showToast("Paused");
        break;
      case AppLifecycleState.detached:
        showToast("Detached");
        break;
      default:
        break;
    }
  }

  void showToast(String message) {
    Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      //timeInSecForIosWeb: 1,
      backgroundColor: Colors.black,
      textColor: Colors.white,
      fontSize: 16.0,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Lifecycle Demo'),
      ),
      body: Center(
        child: Text(
          'Observe lifecycle events with Toasts',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}