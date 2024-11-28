import 'package:flutter/material.dart';
import 'package:practical/Module3/practical60/screens/first.dart';
import 'package:practical/Module3/practical60/screens/second.dart';



void main() => runApp(Myapp());


class Myapp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return MaterialApp(

      title: 'Restarunt Food screnns',
      home: Second(),
    );
  }

}

