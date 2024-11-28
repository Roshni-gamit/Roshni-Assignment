import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:practical/Module4/practical76/main.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Question76(),
    );
  }
}

class Question76 extends StatefulWidget {
  const Question76({super.key});

  @override
  State<Question76> createState() => _Question76State();
}

class _Question76State extends State<Question76> {
  TextEditingController _Num1 = TextEditingController();
  TextEditingController _Num2 = TextEditingController();

  String Ans = '';

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Two Number Calculation'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              keyboardType: TextInputType.number,
              controller: _Num1,
              decoration: InputDecoration(hintText: 'Enter First Value'),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              keyboardType: TextInputType.number,
              controller: _Num2,
              decoration: InputDecoration(hintText: 'Enter Second Value'),
            ),
            SizedBox(
              height: 15,
            ),
            ElevatedButton(
              onPressed: () {
                int NUM1 = int.parse(_Num1.text);
                int NUM2 = int.parse(_Num2.text);
                int Ans = NUM1 + NUM2;
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Main(output: Ans),
                    ));
              },
              child: Text('Submit'),
            ),
            SizedBox(
              height: 15,
            ),
          ],
        ),
      ),
    );
  }
}