import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Image Widget',
      home: Scaffold(
        backgroundColor: Colors.yellow.shade50,
        appBar: AppBar(
          title: Text('Image Widget'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSBuoFK2Ptg86FnH_krJiSvznVcRnCGhxtCgA&s',
                width: 100,
                height: 100,
                /*color: Colors.blue,*/
                /*alignment: Alignment.bottomCenter,*/
              ),
              SizedBox(
                height: 28,
              ),
              Container(

                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Wrap(
                      direction: Axis.horizontal,
                      alignment: WrapAlignment.spaceBetween, // mainAxisAlignment
                      runAlignment: WrapAlignment.spaceEvenly,
                      children: [
                      Image.network(
                        'https://global.discourse-cdn.com/business5/uploads/kotlinlang/original/2X/f/f440c5115af253e7b8dfdd241a45ccb8e494e8a6.png',
                        width: 100,
                        height: 100,
                        fit: BoxFit.cover,
                      ),
                      SizedBox(
                        height: 22,
                        width:22,
                      ),
                         Text('HELLO',style: TextStyle(fontSize: 20),
                         textAlign: TextAlign.center,),

                        SizedBox(
                          height: 22,
                          width:22,
                        ),

                        Image.network(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ58DYxWj7WBQUuApDSU-GRNUuD9u6e_v6Kuw&s',
                          width: 100,
                          height: 100,
                          fit: BoxFit.cover,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 22,
              ),
              Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(0),
                  image: DecorationImage(
                    image: NetworkImage(
                      'https://logowik.com/content/uploads/images/flutter5786.jpg',
                    ),
                    fit: BoxFit.cover,
                  ),

              )
              ),
            ],
          ),
        ),
      ),
    );
  }
}
