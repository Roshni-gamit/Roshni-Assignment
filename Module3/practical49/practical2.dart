import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  String dummyText =
      'Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese Alps. Situated 1,578 meters above sea level, it is one of the larger Alpine Lakes. A gondola ride from Kandersteg, followed by a half-hour walk through pastures and pine forest, leads you to the lake, which warms to 20 degrees Celsius in the summer. Activities enjoyed here include rowing, and riding the summer toboggan run.';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Practical 2',
      home: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(2.0),
            child: Column(
              children: [
                ClipRRect(
                  //borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    'assets/images/Nature.jpg',
                    height: 240,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Padding(
                  padding: const EdgeInsets.all(32.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              child:Text(
                                    'Oeschinen Lake Campground',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                    ),
                                  ),
                            ),

                                Text(
                                  'Kandersteg, Switzerland',
                                  style: TextStyle(
                                    color: Colors.grey.shade500,
                                    //fontWeight: FontWeight.bold,
                                    fontSize: 14,
                                  ),
                                ),

                          ],
                        ),
                      ),
                      Row(
                        children: [
                          getStarIcon(),
                          SizedBox(width: 4,),
                          Text(
                            '41',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 8,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          Icons.call,
                          size: 32,
                          color: Colors.blue,
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          'CALL',
                          style: TextStyle(fontSize: 12),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          Icons.near_me,
                          size: 32,
                          color: Colors.blue,
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          'ROUTE',
                          style: TextStyle(fontSize: 12),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          Icons.share,
                          size: 32,
                          color: Colors.blue,
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          'SHARE',
                          style: TextStyle(fontSize: 12),
                        ),
                      ],
                    ),
                  ],
                ),


                SizedBox(
                  height: 26,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Text(
                    dummyText,
                    textAlign: TextAlign.justify,
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget getStarIcon() {
    return Icon(
      Icons.star,
      color: Colors.red.shade500,
      size: 24,
    );
  }
}
