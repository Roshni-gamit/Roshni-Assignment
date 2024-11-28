import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  final _num1 = TextEditingController();
  final _num2 = TextEditingController();
  List<int>B=[];


  void numberofIndex(){

    int num1 = int.parse(_num1.text);
    int num2 = int.parse(_num2.text);

    List<int> numbers = List.generate(num2 -num1 + 1, (index) => num1 + index);
    setState(() {
      B = numbers;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'two number ',
      home: Scaffold(
        backgroundColor: Colors.orange.shade50,
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                TextField(
                  controller: _num1,
                  decoration: InputDecoration(
                      labelText: 'Enter number',
                    hintText: 'Enter Number',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 20,),

                TextField(
                  controller: _num2,
                  decoration: InputDecoration(
                      labelText: 'Enter number',
                    hintText: 'Enter Number',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 20,),
                ElevatedButton(onPressed: (){
                  numberofIndex();
                }, child: Text('Press button')),
                SizedBox(height: 20,),
                Text('Result is :$B',
                  style: TextStyle(fontSize: 20),
                ),

              ],

            ),
          ),
        ),
      ),
    );
  }
}
