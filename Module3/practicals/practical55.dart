import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _isChecked = false;
  bool textVisible= false;

  @override

  void initState(){
    super.initState();
    textVisible= true;

  }
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Checkbox',
      home: Scaffold(
          backgroundColor: Colors.orange.shade50,
        appBar: AppBar(
          title: Text('Check box'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  _isChecked ?  Text('Welcome to My App',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color: Colors.white)
                  ):SizedBox(),
                ],
              ),
              SizedBox(
                height: 16,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    //mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Checkbox(
                        checkColor: Colors.white,
                        value: _isChecked,
                        onChanged: (bool?value) {
                          setState(() {
                            _isChecked = value!;
                            textVisible= !textVisible;
                            print(value);
                          });
                        },
                      ),
                      Text('Hide/Show' , style: TextStyle(fontSize: 16),),
                    ],
                  ),
                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}
