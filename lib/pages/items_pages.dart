// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:clippy_flutter/arc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/widget/itembottomNavebar.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ItemsPage extends StatefulWidget {
  const ItemsPage({Key? key}) : super(key: key);

  @override
  _ItemsPageState createState() => _ItemsPageState();
}

class _ItemsPageState extends State<ItemsPage> {
  List<Color>clrs=[
      Colors.red,
      Colors.green,
      Colors.blue,
      Colors.indigo,
      Colors.orange,


  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 234, 229, 229),
      appBar: AppBar(
        title: Text('Items Page'),
        // Adding a back button
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.all(16),
            child: Image.asset(
              "images/image1.png",
              height: 300,
            ),
          ),
          Arc(
            edge: Edge.TOP,
            arcType: ArcType.CONVEX,
            height: 30,
            child: Container(
              color: Colors.white,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        top: 26,
                        bottom: 15,
                      ),
                      child: Text(
                        "Product Title",
                        style: TextStyle(
                          fontSize: 28,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 5, bottom: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              RatingBar.builder(
                                initialRating: 4,
                                maxRating: 1,
                                direction: Axis.horizontal,
                                itemCount: 5,
                                itemSize: 20,
                                itemPadding:
                                    EdgeInsets.symmetric(horizontal: 4),
                                itemBuilder: (context, _) => Icon(
                                  Icons.favorite,
                                  color: Color(0xFF4C53A5),
                                ),
                                onRatingUpdate: (intex) {},
                              ),
                              Row(
                                children: [
                                  Container(
                                    padding: EdgeInsets.all(5),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(20),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(0.5),
                                          spreadRadius: 3,
                                          blurRadius: 10,
                                          offset: Offset(0, 3),
                                        ),
                                      ],
                                    ),
                                    child: Icon(
                                      CupertinoIcons.plus,
                                      size: 18,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: Text(
                        " this  is more detailed  descrpition of the the product.you can writ",
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          fontSize: 17,
                          color: Colors.black26,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 8),
                      child: Row(
                        children: [
                          Text(
                            "size:",
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Row(
                            children: [
                              for (int i = 0; i < 5; i++)
                                Container(
                                  height: 30,
                                  width: 30,
                                  alignment: Alignment.center,
                                  margin: EdgeInsets.symmetric(horizontal: 5),
                                  decoration: BoxDecoration(
                                    color: clrs[i],
                                    borderRadius: BorderRadius.circular(30),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.5),
                                        spreadRadius: 2,
                                        blurRadius: 8,
                                      ),
                                    ],
                                  ),
                                  
                                ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 8),
                      child: Row(
                        children: [
                          Text(
                            "size:",
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Row(
                            children: [
                              for (int i = 5; i < 10; i++)
                                Container(
                                  height: 30,
                                  width: 30,
                                  alignment: Alignment.center,
                                  margin: EdgeInsets.symmetric(horizontal: 5),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(30),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.5),
                                        spreadRadius: 2,
                                        blurRadius: 8,
                                      ),
                                    ],
                                  ),
                                  child: Text(
                                    i.toString(),
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.blueAccent,
                                    ),
                                  ),
                                ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              
            ),
          ),
        ],
      ),
      bottomNavigationBar:ItemBottomNavbar(),
    );
  }
}
