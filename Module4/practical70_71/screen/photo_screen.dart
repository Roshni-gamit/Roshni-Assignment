import 'package:flutter/material.dart';


import '../../../Module4/practical70_71//model/item.dart';





class Photos extends StatefulWidget {
  @override
  State<Photos> createState() => _PhotosState();
}

class _PhotosState extends State<Photos> {
  List<Item> itemList = [
    Item(image: "image/p1.jpg", color: Colors.teal.shade100),
    Item(image: "image/p2.jpg", color: Colors.teal.shade200),
    Item(image: "image/p3.jpg", color: Colors.teal.shade300),
    Item(image: "image/p4.jpg", color: Colors.teal.shade400),
    Item(image: "image/p1.jpg", color: Colors.teal.shade500),
    Item(image: "image/p2.jpg", color: Colors.teal.shade500),
    Item(image: "image/p3.jpg", color: Colors.teal.shade500),
    Item(image: "image/p4.jpg", color: Colors.teal.shade500),
    Item(image: "image/p1.jpg", color: Colors.teal.shade500),
    Item(image: "image/p2.jpg", color: Colors.teal.shade500),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 4 / 3,
              crossAxisSpacing: 5,
              mainAxisSpacing: 5,
              mainAxisExtent: 200),
          itemCount: itemList.length,
          itemBuilder: (context, index) => Container(
            child: Image.asset('${itemList[index].image}', fit: BoxFit.fill),
            color: itemList[index].color,
          ),
        ));
  }
}