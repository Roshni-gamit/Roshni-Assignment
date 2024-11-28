import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: SafeArea(
        child: Scaffold(
          //backgroundColor: Colors.grey,

          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(top: 4.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                     Container(
                    color: Colors.redAccent,
                    width: 400,
                    height: 170,
                    alignment: Alignment.topCenter,

                    padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),

                    ),
                  SizedBox(height: 8,),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          width: 195,
                          height: 195,
                          color: Colors.blue,
                        ),
                        Container(
                          width: 195,
                          height: 195,
                          color: Colors.blue,
                        ),

                      ],
                    ),
                  ),
                  SizedBox(height: 8,),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          width: 195,
                          height: 195,
                          color: Colors.blue,
                        ),
                        Container(
                          width: 195,
                          height: 195,
                          color: Colors.blue,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 8,),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      /*crossAxisAlignment: CrossAxisAlignment.start,*/
                      /*mainAxisSize: MainAxisSize.min,*/
                      children: [
                        Container(
                          width: 125,
                          height: 125,
                          color: Colors.yellowAccent.shade400,
                        ),
                        Container(
                          width: 125,
                          height: 125,
                          color: Colors.yellowAccent.shade400,
                        ),
                        Container(
                          width: 125,
                          height: 125,
                          color: Colors.yellowAccent.shade400,
                        ),
                      ],
                    ),
                  ),


                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
