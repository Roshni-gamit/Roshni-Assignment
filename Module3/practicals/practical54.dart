import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _txtStyle = TextStyle(
    fontSize: 18,
  );

  double  _fontsize = 14;

  void _changeFontSize(double fontSize) {
    setState(() {
      _fontsize+=2;
    });
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Counter App',
      home: Scaffold(
          backgroundColor: Colors.orange.shade50,
        appBar: AppBar(
          title: Text('Counter App'),
        ),
        body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Text(
                    'Hello World',
                    style: TextStyle(fontSize: _fontsize),
                  ),
                ),
                SizedBox(height: 40,),
                Column(
                  children: [
                    Wrap(
                        children: [
                          FilledButton(
                            onPressed: () {
                              setState(() {
                                _fontsize--;
                              });
                              // print('counter : $count');
                            },
                            child: Text(
                              '-',
                              style: _txtStyle,
                            ),
                          ),

                          SizedBox(height: 20,
                            width: 20,),
                          FilledButton(
                            onPressed: () {
                              // Rebuild widget tree
                              setState(() {
                                _fontsize++;
                              });
                              //print('counter : $count');
                            },
                            child: Text(
                              '+',
                              style: _txtStyle,
                            ),
                          )
                        ]
                    ),
                  ],
                ),


              ],
            )

        ),
      ),
    );
  }
}

class CounterApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _CounterApp();
  }
}

class _CounterApp extends State<CounterApp> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
