import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appTitle = 'Add Two Numbers';

    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        backgroundColor: Colors.orange.shade50,

        body: AddTwoNumbers(),
      ),
    );
  }
}

class AddTwoNumbers extends StatefulWidget {
  @override
  _AddTwoNumbersState createState() => _AddTwoNumbersState();
}

class _AddTwoNumbersState extends State<AddTwoNumbers> {
  TextEditingController num1controller = new TextEditingController();
  TextEditingController num2controller = new TextEditingController();
  String result = "0";

  var quenGroup = -1;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      child: Column(
        children: [
          TextField(
            keyboardType: TextInputType.number,
            controller: num1controller,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'First Number',
              hintText: 'Enter First Number',
            ),
          ),
          SizedBox(
            height: 20,
          ),
          TextField(
            keyboardType: TextInputType.number,
            controller: num2controller,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Second Number',
              hintText: 'Enter Second Number',
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Radio(
                value: 1,
                groupValue: quenGroup,
                onChanged: (value) {
                  setState(() {
                    int sum = int.parse(num1controller.text) +
                        int.parse(num2controller.text);
                    result = sum.toString();
                  });
                },
              ),
              Text('Addition'),
            ],
          ),
          Row(
            children: [
              Radio(
                value: 2,
                groupValue: quenGroup,
                onChanged: (value) {
                  setState(() {
                    int sum = int.parse(num1controller.text) -
                        int.parse(num2controller.text);
                    result = sum.toString();
                  });
                },
              ),
              Text('Subtraction'),
            ],
          ),
          Row(
            children: [
              Radio(
                value: 3,
                groupValue: quenGroup,
                onChanged: (value) {
                  setState(() {
                    int sum = int.parse(num1controller.text) *
                        int.parse(num2controller.text);
                    result = sum.toString();
                  });
                },
              ),
              Text('Multiplication'),
            ],
          ),
          Row(
            children: [
              Radio(
                value: 4,
                groupValue: quenGroup,
                onChanged: (value) {
                  setState(() {
                    int sum = int.parse(num1controller.text) ~/
                        int.parse(num2controller.text);
                    result = sum.toString();
                  });
                },
              ),
              Text('Division'),
            ],
          ),
          SizedBox(height: 20,),
          Text('Result:$result' ,
          style: TextStyle(fontSize: 20),),

        ],
      ),
    );
  }
}