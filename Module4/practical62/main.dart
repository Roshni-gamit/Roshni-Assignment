import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: practical62(),
    );
  }
}

class practical62 extends StatelessWidget {
  const practical62({super.key});

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
                    title: Text('Exit'),
                    content: Text('Are You Sure To Exit ?'),
                    actions: [
                      TextButton(
                        onPressed: () =>  Navigator.pop(context),
                        child: Text('Cancel'),
                      ),
                      TextButton(
                        onPressed: () => Navigator.pop(context),
                        child: Text('Exit'),
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