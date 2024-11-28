import 'package:flutter/material.dart';


class Screen extends StatefulWidget {
  const Screen({super.key});

  @override
  State<Screen> createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  int couter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios_new_outlined),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
              ),
              Text(
                'Chart',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'Thu,6th of June',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.circle,
                  size: 10,
                  color: Colors.grey,
                ),
                title: Text(
                  'Add To order',
                  style: TextStyle(color: Colors.grey),
                ),
                horizontalTitleGap: 0,
              ),
              Container(
                height: 450,
                child: ListView.separated(
                  itemCount: 15,
                  itemBuilder: (context, index) {
                    return ListTile(
                      horizontalTitleGap: 50,
                      leading: SizedBox(
                          height: 200,
                          child: Card(child: Image.asset('image/c1.jpg'))),
                      title: Text(
                        'Chicken Burger',
                        style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13),
                      ),
                      subtitle: Container(
                        child: Row(
                          children: [
                            Expanded(flex: 1,
                              child: IconButton(
                                  onPressed: () {
                                    setState(() {
                                      couter--;
                                    });
                                  },
                                  icon: Icon(
                                    Icons.remove,
                                    size: 20,
                                  )),
                            ),
                            // SizedBox(
                            //   width: 15,
                            // ),
                            Expanded(
                              flex: 0,
                              child: Text(
                                '$couter',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: IconButton(
                                  onPressed: () {
                                    setState(() {
                                      couter++;
                                    });
                                  },
                                  icon: Icon(
                                    Icons.add,
                                    size: 20,
                                  )),
                            ),
                          ],
                        ),
                      ),
                      trailing: Column(
                        children: [
                          Text(
                            '\$ 7',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18
                            ),
                          ),
                          SizedBox(
                            height: 30,
                            child:  IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.add),
                              style: IconButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                    borderRadius:
                                    BorderRadius.circular(15),
                                  ),
                                  backgroundColor: Colors.amber),
                            ),
                          )

                        ],
                      ),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return SizedBox(
                      height: 10,
                    );
                  },
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Total',style:TextStyle(fontSize: 25,color: Colors.grey,fontWeight: FontWeight.bold),),
                  Text('\$45.60',style:TextStyle(fontSize: 25,fontWeight: FontWeight.bold)),
                ],
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: ElevatedButton(onPressed: () {

                }, child: Text('CheckOut',style: TextStyle(color: Colors.black,fontSize: 20),),
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.amber),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}