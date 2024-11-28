import 'package:flutter/material.dart';
import 'package:practical/Module3/practical60/model/item.dart';



void main() => runApp(First());

class First extends StatelessWidget {
  
  List<Item> itemList =[
    
    Item(title: 'Recommend', color: Colors.amber.shade800),
    Item(title: 'Popular', color: Colors.white),
    Item(title: 'Noodles', color: Colors.white),
    Item(title: 'Pizza', color: Colors.white),

    
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Food',
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.grey.shade100,
          body: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
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
                                Icons.search,
                              )), ),

                      ),
            
                    ],
                  ),
                  SizedBox(height: 20,),
            
                  Container(
                    child: Column(
                      children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Restaurant',
                                      style: TextStyle(
                                        fontSize: 25,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(height: 10,),
                                    Row(
                                      children: [
                                        Container(
                                            padding: EdgeInsets.all(5),
                                            decoration: BoxDecoration(
                                              color: Colors.grey.withOpacity(0.4),
                                              borderRadius: BorderRadius.circular(5),
                                            ),
                                            child: Text(
                                              '20-30min',
                                              style: TextStyle(color: Colors.white),
                                            )),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                         '2.4km',
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.grey.withOpacity(0.6),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                          'Restaurant',
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.grey.withOpacity(0.6),
                                          ),
                                        ),
            
                                      ],
                                    ),
            
                                  ],
                                ),
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(50),
                                  child: Image.asset('assets/images/res_logo.png',width: 80,),
            
                                ),
                              ],
                            ),
                        SizedBox(height: 5,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Orange Sandwiches is delicious', style: TextStyle(fontSize: 16),),
                            Row(
                              children: [
                                Icon(Icons.star_outline , color: Colors.amber,),
                                Text('4.7',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold
                                ),),
                                SizedBox(width: 15,),
            
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 30,),
                  Container(
                    height: 100,
                    padding: EdgeInsets.symmetric(vertical: 30),
                      child: ListView.separated(
                        padding: EdgeInsets.symmetric(horizontal: 25),
                        scrollDirection: Axis.horizontal,
                        itemCount: itemList.length,
                        itemBuilder: (context, index){
                          Item item =itemList[index];
            
            
                          return Container(
                            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                            // height: 50,
                            // width: 100,
                            decoration: BoxDecoration(
                              //shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white,
                            ),
                            child: Text('${item.title}',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
            
                          );
                        },
                        separatorBuilder: ( context, index) {
                          return Container(
            
                            width: 20,
                            alignment: Alignment.center,
                            /*color: Colors.black,*/
                            child: Text(''),
                          );
            
                      },
            
                  ),
                  ),
                  SizedBox(height: 16,),
                  Container(
                    height: 110,
                    decoration: BoxDecoration(
                      color: Colors.white, borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(5),
                          width: 110,
                          height: 110,
            
                         child: Image.asset('assets/images/dish1.png',
                         fit: BoxFit.fitHeight,
                         ),
                        ),
                        Expanded(
                            child:Container(
            
                              padding: EdgeInsets.only(top: 20,left: 10,right: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text('Soba Shoup',
                                      style: TextStyle(
                                      fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        height: 1.5,
                                        color: Colors.black,
                                      ),
                                      ),
                                      Icon(Icons.arrow_forward_ios_outlined,
                                      size: 15,)
                                    ],
                                  ),
                                  Text(
                                    'No1.in sales',
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.amberAccent,
                                    ),
                                  ),
                                  SizedBox(height: 5,),
                                  
                                  Row(
                                    children: [
                                      Text('\$',
                                        style: TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black,
                                      ),
                                      ),
                                      Text('12',
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ],
                                  ),
            
                                ],
                              ),
                            ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 8,),
                  Container(
                    height: 110,
                    decoration: BoxDecoration(
                      color: Colors.white, borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(5),
                          width: 110,
                          height: 110,
            
                          child: Image.asset('assets/images/dish2.png',
                            fit: BoxFit.fitHeight,
                          ),
                        ),
                        Expanded(
                          child:Container(
            
                            padding: EdgeInsets.only(top: 20,left: 10,right: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('Sei Ua Samun Phrai',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        height: 1.5,
                                        color: Colors.black,
                                      ),
                                    ),
                                    Icon(Icons.arrow_forward_ios_outlined,
                                      size: 15,)
                                  ],
                                ),
                                Text(
                                  'No1.in sales',
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.grey,
                                  ),
                                ),
                                SizedBox(height: 5,),
            
                                Row(
                                  children: [
                                    Text('\$',
                                      style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                      ),
                                    ),
                                    Text('12',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ],
                                ),
            
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 8,),
                  Container(
                    height: 110,
                    decoration: BoxDecoration(
                      color: Colors.white, borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(5),
                          width: 110,
                          height: 110,
            
                          child: Image.asset('assets/images/dish3.png',
                            fit: BoxFit.fitHeight,
                          ),
                        ),
                        Expanded(
                          child:Container(
            
                            padding: EdgeInsets.only(top: 20,left: 10,right: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('Ratatoullie Pasta',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        height: 1.5,
                                        color: Colors.black,
                                      ),
                                    ),
                                    Icon(Icons.arrow_forward_ios_outlined,
                                      size: 15,)
                                  ],
                                ),
                                Text(
                                  'No1.in sales',
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.grey,
                                  ),
                                ),
                                SizedBox(height: 5,),
            
                                Row(
                                  children: [
                                    Text('\$',
                                      style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                      ),
                                    ),
                                    Text('12',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ],
                                ),
            
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(

                    padding: EdgeInsets.symmetric(horizontal: 25),
                    height: 110,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('....', style: TextStyle(fontSize: 50,
                                    fontWeight: FontWeight.bold,
                          color: Colors.grey,

                        ),),
                         CircleAvatar(
                          radius: 30,
                          backgroundColor: Colors.amber,
                          child: IconButton(
                              color: Colors.black,
                              onPressed: () {},
                              icon: Icon(
                                Icons.shopping_bag_outlined,
                                color: Colors.black,
                                size: 30,
                              )), ),
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
