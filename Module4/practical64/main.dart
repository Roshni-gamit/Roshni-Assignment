import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: practical64(),
    );
  }
}

class practical64 extends StatefulWidget {
  const practical64({Key? key}) : super(key: key);

  @override
  State<practical64> createState() => _practical64State();
}

class _practical64State extends State<practical64> {
  String _selectedValue = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Material App Bar'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: Text('Select City'),
                      content: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          RadioListTile(
                            title: Text('Surat'),
                            value: 'Surat',
                            groupValue: _selectedValue,
                            onChanged: (value) {
                              setState(() {
                                _selectedValue = value.toString();
                              });
                              Navigator.pop(context);
                            },
                          ),
                          RadioListTile(
                            title: Text('Valsad'),
                            value: 'Valsad',
                            groupValue: _selectedValue,
                            onChanged: (value) {
                              setState(() {
                                _selectedValue = value.toString();
                              });
                              Navigator.pop(context);
                            },
                          ),
                          RadioListTile(
                            title: Text('Patan'),
                            value: 'Patan',
                            groupValue: _selectedValue,
                            onChanged: (value) {
                              setState(() {
                                _selectedValue = value.toString();
                              });
                              Navigator.pop(context);
                            },
                          ),
                          RadioListTile(
                            title: Text('Ahmedabad'),
                            value: 'Ahmedabad',
                            groupValue: _selectedValue,
                            onChanged: (value) {
                              setState(() {
                                _selectedValue = value.toString();
                              });
                              Navigator.pop(context);
                            },
                          ),
                          RadioListTile(
                            title: Text('Rajkot'),
                            value: 'Rajkot',
                            groupValue: _selectedValue,
                            onChanged: (value) {
                              setState(() {
                                _selectedValue = value.toString();
                              });
                              Navigator.pop(context);
                            },
                          ),
                          RadioListTile(
                            title: Text('Vadodara'),
                            value: 'Vadodara',
                            groupValue: _selectedValue,
                            onChanged: (value) {
                              setState(() {
                                _selectedValue = value.toString();
                              });
                              Navigator.pop(context);
                            },
                          ),
                          RadioListTile(
                            title: Text('Morbi'),
                            value: 'Morbi',
                            groupValue: _selectedValue,
                            onChanged: (value) {
                              setState(() {
                                _selectedValue = value.toString();
                              });
                              Navigator.pop(context);
                            },
                          ),
                        ],
                      ),
                    );
                  },
                );
              },
              child: Text(
                'Show Dialog',
                style: TextStyle(fontSize: 20),
              ),
            ),
            Text('$_selectedValue',style: TextStyle(fontSize: 25),),
          ],
        ),
      ),
    );
  }
}