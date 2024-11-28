import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Question63(),
    );
  }
}

class Question63 extends StatelessWidget {
  String Selectchoice = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Material App Bar'),
      ),
      body: Center(
          child: ElevatedButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    icon: Icon(Icons.person),
                    title: Text('Choice'),
                    content: Text('Are You Sure To Exit ?'),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Selectchoice = 'Negative';
                          Navigator.pop(context);
                          showTost(Selectchoice);
                        },
                        child: Text('Negative'),
                      ),
                      TextButton(
                        onPressed: () {
                          Selectchoice = 'Neutral';
                          showTost(Selectchoice);
                          Navigator.pop(context);
                        },
                        child: Text('Neutral'),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                          Selectchoice = 'Positive';
                          showTost(Selectchoice);
                        },
                        child: Text('Positive'),
                      ),
                    ],
                  );
                },
              );
            },
            child: Text('ShowAlertDilogBox'),
          )),
    );
  }
}

void showTost(choice) {
  Fluttertoast.showToast(
      msg: choice,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 1,
      backgroundColor: Colors.grey.shade300,
      textColor: Colors.black,
      fontSize: 16.0);
}