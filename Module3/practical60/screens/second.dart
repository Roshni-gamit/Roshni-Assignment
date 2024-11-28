import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(Second());

class Second extends StatefulWidget {
  const Second({super.key});

  @override
  State<Second> createState() => _SecondState();
}

class _SecondState extends State<Second> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          body: SingleChildScrollView(
            child: Column(
              children: [
                // Image and title section
                Container(
                  padding: EdgeInsets.all(8),
                  height: 200,
                  decoration: BoxDecoration(
                    color: Colors.amber.shade600,
                    borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Expanded(
                            child: CircleAvatar(
                              radius: 20,
                              backgroundColor: Colors.white,
                              child: IconButton(
                                  color: Colors.black,
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.arrow_back,
                                  )),

                            ),

                          ),
                          SizedBox(width: 300,),
                          Expanded(
                            child: CircleAvatar(
                              radius: 20,
                              backgroundColor: Colors.white,
                              child: IconButton(
                                  color: Colors.black,
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.favorite_border_outlined,
                                  )), ),

                          ),

                        ],
                      ),

                      SizedBox(height: 20),
                      Image.asset(
                        'assets/images/dish2.png', // Replace with your image URL
                        height: 200,
                        fit: BoxFit.cover,
                      ),
                      SizedBox(height: 100),

                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.access_time, color: Colors.white),
                          SizedBox(width: 5),
                          Text('50min', style: TextStyle(color: Colors.white)),
                          SizedBox(width: 20),
                          Icon(Icons.star, color: Colors.white),
                          SizedBox(width: 5),
                          Text('4.8', style: TextStyle(color: Colors.white)),
                          SizedBox(width: 20),
                          Text('325 Kcal', style: TextStyle(color: Colors.white)),
                        ],
                      ),

                    ],
                  ),
                ),
                SizedBox(height: 20),
                // Price and quantity section
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('\$12', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                      Row(
                        children: [
                          IconButton(icon: Icon(Icons.remove), onPressed: () {}),
                          Text('1', style: TextStyle(fontSize: 20)),
                          IconButton(icon: Icon(Icons.add), onPressed: () {}),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                // Ingredients section
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text('Ingredients', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _ingredientChip('Noodle'),
                    _ingredientChip('Shrimp'),
                    _ingredientChip('Egg'),
                    _ingredientChip('Scallion'),
                  ],
                ),
                SizedBox(height: 20),
                // About section
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text('About', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    'A vibrant Thai sausage made with ground chicken, plus its spicy chile dip, from Chef Parnass Savang of Atlanta\'s Talat Market.',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                SizedBox(height: 20),
                // Add to cart button
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text('Add to Cart'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor:  Colors.orange,
                      padding: EdgeInsets.symmetric(vertical: 15),
                      textStyle: TextStyle(fontSize: 18),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),


      ),
    );
  }

  Widget _ingredientChip(String ingredient) {
    return Chip(
      label: Text(ingredient),
      backgroundColor: Colors.orange[100],
    );
  }
}