
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:practical/module4/practical61/screen/screen2.dart';

import '../model/category.dart';
import '../model/cuisine.dart';
import '../model/item.dart';

class practical61 extends StatefulWidget {
  const practical61({super.key});

  @override
  State<practical61> createState() => _practical61State();
}

class _practical61State extends State<practical61> {
  @override
  List<Cuisine> cuisineList = [
    Cuisine(
      titel: 'Recommend',
      categoryList: [
        category(
          name: 'All',
          itemList: [
            item(
                image: 'image/c1.jpg',
                itemName: 'Pizza',
                rating: 3.5,
                price: '\$13.2'),
            item(
                image: 'image/c1.jpg',
                itemName: 'Pizza',
                rating: 3.5,
                price: '\$13.2'),
            item(
                image: 'image/c1.jpg',
                itemName: 'Pizza',
                rating: 3.5,
                price: '\$13.2'),
            item(
                image: 'image/c1.jpg',
                itemName: 'Pizza',
                rating: 3.5,
                price: '\$13.2'),
            item(
                image: 'image/c1.jpg',
                itemName: 'Pizza',
                rating: 3.5,
                price: '\$13.2'),
          ],
        ),
        category(name: 'Chinese', itemList: [
          item(
              image: 'image/c1.jpg',
              itemName: 'Dumplings',
              rating: 3.5,
              price: '\$13.5'),
          item(
              image: 'image/c1.jpg',
              itemName: 'Chow Mein',
              rating: 4,
              price: '\$5.32'),
          item(
              image: 'image/c1.jpg',
              itemName: 'Chow Mein',
              rating: 4,
              price: '\$5.32'),
          item(
              image: 'image/c1.jpg',
              itemName: 'Chow Mein',
              rating: 4,
              price: '\$5.32'),
          item(
              image: 'image/c1.jpg',
              itemName: 'Chow Mein',
              rating: 4,
              price: '\$5.32'),
          item(
              image: 'image/c1.jpg',
              itemName: 'Spring Rolls',
              rating: 4.2,
              price: '\$9.14')
        ]),
      ],
    ),
    Cuisine(
      titel: 'Italian',
      categoryList: [
        category(
          name: 'Pizza',
          itemList: [
            item(
                image: 'image/c1.jpg',
                itemName: 'Pizza',
                rating: 3.5,
                price: '\$20.5'),
            item(
                image: 'image/c1.jpg',
                itemName: 'Pizza',
                rating: 3.5,
                price: '\$20.5'),
            item(
                image: 'image/c1.jpg',
                itemName: 'Pizza',
                rating: 3.5,
                price: '\$20.5'),
            item(
                image: 'image/c1.jpg',
                itemName: 'Pizza',
                rating: 3.5,
                price: '\$20.5'),
            item(
                image: 'image/c1.jpg',
                itemName: 'Pizza',
                rating: 3.5,
                price: '\$20.5'),
          ],
        ),
        category(name: 'Pasta', itemList: [
          item(
              image: 'image/c1.jpg',
              itemName: 'Dumplings',
              rating: 3.5,
              price: '\$13.12'),
          item(
              image: 'image/c1.jpg',
              itemName: 'Chow Mein',
              rating: 4,
              price: '\$21.3'),
          item(
              image: 'image/c1.jpg',
              itemName: 'Spring Rolls',
              rating: 4.2,
              price: '\$17.20'),
        ]),
        category(
          name: 'Gelato and Dolce',
          itemList: [
            item(
                image: 'image/c1.jpg',
                itemName: 'Pizza',
                rating: 3.5,
                price: '\$8.20'),
            item(
                image: 'image/c1.jpg',
                itemName: 'Spring Rolls',
                rating: 4.2,
                price: '\$17.20'),
            item(
                image: 'image/c1.jpg',
                itemName: 'Spring Rolls',
                rating: 4.2,
                price: '\$17.20'),
            item(
                image: 'image/c1.jpg',
                itemName: 'Spring Rolls',
                rating: 4.2,
                price: '\$17.20'),
          ],
        ),
      ],
    ),
    Cuisine(
      titel: 'Indian',
      categoryList: [
        category(name: 'All', itemList: [
          item(
              image: 'image/dhokla.jpg',
              itemName: 'Dhokla',
              rating: 3.5,
              price: '\$12.32'),
          item(
              image: 'image/c1.jpg',
              itemName: 'Spring Rolls',
              rating: 4.2,
              price: '\$17.20'),
          item(
              image: 'image/c1.jpg',
              itemName: 'Spring Rolls',
              rating: 4.2,
              price: '\$17.20'),
          item(
              image: 'image/c1.jpg',
              itemName: 'Spring Rolls',
              rating: 4.2,
              price: '\$17.20'),
          item(
              image: 'image/c1.jpg',
              itemName: 'Spring Rolls',
              rating: 4.2,
              price: '\$17.20'),
        ]),
        category(name: 'Choley', itemList: [
          item(
              image: 'image/c1.jpg',
              itemName: 'Pizza',
              rating: 3.5,
              price: '\$18.20'),
          item(
              image: 'image/c1.jpg',
              itemName: 'Spring Rolls',
              rating: 4.2,
              price: '\$17.20'),
          item(
              image: 'image/c1.jpg',
              itemName: 'Spring Rolls',
              rating: 4.2,
              price: '\$17.20'),
          item(
              image: 'image/c1.jpg',
              itemName: 'Spring Rolls',
              rating: 4.2,
              price: '\$17.20'),
        ]),
      ],
    ),
  ];

  int selectCuisineIndex = 0;

  int selectcategoryIndex = 0;

  int selectItemIndex = 0;

  int selectNavbarIndex = 0;

  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
          child: SafeArea(
            child: Center(
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Text(
                          'Menu',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 25),
                        ),
                      ),
                      Expanded(
                        flex: 0,
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.search,
                            size: 25,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 0,
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.filter_alt_outlined,
                            size: 25,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height: 70,
                    child: ListView.separated(
                      itemCount: cuisineList.length,
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return ChoiceChip(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            selectedColor: Colors.amber,
                            label: Text(cuisineList[index].titel),
                            showCheckmark: false,
                            onSelected: (value) {
                              setState(
                                    () {
                                  selectCuisineIndex = index;
                                  selectcategoryIndex = 0;
                                },
                              );
                            },
                            selected: index == selectCuisineIndex);
                      },
                      separatorBuilder: (context, index) {
                        return SizedBox(
                          width: 10,
                        );
                      },
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 40,
                    width: double.infinity,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount:
                      cuisineList[selectCuisineIndex].categoryList.length,
                      itemBuilder: (context, index) {
                        return Container(
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                selectcategoryIndex = index;
                              });
                            },
                            child: Text(
                              '  ${cuisineList[selectCuisineIndex].categoryList[index].name}  ',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: selectcategoryIndex == index
                                    ? FontWeight.bold
                                    : FontWeight.w300,
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  GridView.builder(
                    physics: BouncingScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: cuisineList[selectCuisineIndex]
                        .categoryList[selectcategoryIndex]
                        .itemList
                        .length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        mainAxisExtent: 280, crossAxisCount: 2),
                    itemBuilder: (context, index) {
                      var item = cuisineList[selectCuisineIndex]
                          .categoryList[selectcategoryIndex]
                          .itemList[index];
                      return SizedBox(
                        child: Card(
                          margin: EdgeInsets.all(10),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset('${item.image}', fit: BoxFit.fill),
                              SizedBox(
                                height: 10,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 5),
                                child: Row(
                                  children: [
                                    Text(
                                      item.itemName,
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 20),
                                    ),
                                  ],
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  RatingBar.builder(
                                    initialRating: item.rating,
                                    minRating: 1,
                                    direction: Axis.horizontal,
                                    allowHalfRating: true,
                                    itemCount: 5,
                                    itemSize: 20,
                                    itemPadding:
                                    EdgeInsets.symmetric(horizontal: 2.0),
                                    itemBuilder: (context, _) => Icon(
                                      Icons.star,
                                      color: Colors.amber,
                                    ),
                                    onRatingUpdate: (rating) {
                                      print(rating);
                                    },
                                  ),
                                  Text(
                                    '(29)',
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Padding(
                                padding:
                                const EdgeInsets.only(left: 5, right: 5),
                                child: Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      '${item.price}',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20),
                                    ),
                                    IconButton(
                                      onPressed: () {},
                                      icon: Icon(Icons.add),
                                      style: IconButton.styleFrom(
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                            BorderRadius.circular(15),
                                          ),
                                          backgroundColor: Colors.amber),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    },
                  )
                ],
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          setState(() {
            selectNavbarIndex = value;
            if (selectNavbarIndex == 1) {
              selectNavbarIndex == 0;
              _showBottomSheet(context);
            }
            if (selectNavbarIndex == 2) {
              selectNavbarIndex == 0;
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Screen(),
                  ));
            }
          });
        },
        selectedItemColor: Colors.amber,
        currentIndex: selectNavbarIndex,
        items: [
          BottomNavigationBarItem(
              label: 'Home',
              icon: Icon(
                Icons.home_outlined,
              ),
              activeIcon: Icon(Icons.home)),
          BottomNavigationBarItem(
            label: 'Profile',
            icon: Icon(
              Icons.person_outline_outlined,
            ),
            activeIcon: Icon(Icons.person),
          ),
          BottomNavigationBarItem(
              label: 'Store',
              icon: Icon(
                Icons.shopping_cart_outlined,
              ),
              activeIcon: Icon(Icons.shopping_cart)),
        ],
      ),
    );
  }

  void _showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return Container(
          margin: EdgeInsets.all(15),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.vertical(top: Radius.circular(50)),
          ),
          width: MediaQuery.of(context).size.width,

          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Your Order',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  IconButton(
                      onPressed: () {
                        setState(() {
                          Navigator.pop(context);
                          selectNavbarIndex = 0;
                        });

                      },
                      icon: Icon(Icons.close))
                ],
              ),
              ListTile(
                title: Text(
                  'Chicken Burger',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                subtitle: Text(
                  '250g',
                  style: Theme.of(context).textTheme.titleSmall,
                ),
                trailing: Text(
                  '\$7.00',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ),
              ListTile(
                title: Text(
                  'Pizza',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                subtitle: Text(
                  'Large',
                  style: Theme.of(context).textTheme.titleSmall,
                ),
                trailing: Text(
                  '\$14.75',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ),
              ListTile(
                title: Text('Total',
                    style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.w400,
                        fontSize: 25)),
                trailing: Text(
                  '\$21.75',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'Add to Cart',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  style:
                  ElevatedButton.styleFrom(backgroundColor: Colors.amber),
                ),
              )
            ],
          ),
        );
      },
    );
  }
}