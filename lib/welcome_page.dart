// ignore_for_file: prefer_const_constructors, unused_import, prefer_const_literals_to_create_immutables

// ignore: depend_on_referenced_packages
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/categories_widegets.dart';
import 'package:flutter_application_1/itemes_widget.dart';
import 'package:flutter_application_1/pages/home_appbar.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          HomeAppbar(),
          Container(
            padding: EdgeInsets.only(top: 15),
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 229, 228, 228),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(50),
                topRight: Radius.circular(50),
              ),
            ),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 15),
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  height: 50,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(97, 129, 125, 125),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 5),
                        height: 50,
                        width: 300,
                        child: TextFormField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "search here...",
                          ),
                        ),
                      ),
                      Spacer(),
                      Icon(
                        Icons.camera,
                        size: 27,
                        color: Colors.lightBlue,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 30),
                Container(
                  margin: EdgeInsets.only(right: 20),
                  alignment: Alignment.topCenter,
                  child: Text(
                    "Categories",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                    ),
                  ),
                ),
                CategoriesWidget(),
                
                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                  child: Text(
                    "Best Seller",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.lightBlue,
                    ),
                  ),
                ),
                ItemsWidget(),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: CurvedNavigationBar(
        height: 70,
        color: Colors.lightBlue,
        items: [
          Icon(
            Icons.home,
            size: 30,
            color: Colors.white,
          ),
          Icon(
            Icons.search,
            size: 30,
            color: Colors.white,
          ),
          Icon(
            Icons.settings,
            size: 30,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}
