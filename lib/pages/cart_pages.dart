// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, library_private_types_in_public_api, unused_import

import 'package:flutter/material.dart';
import 'package:flutter_application_1/widget/cart_bottamNavebar.dart';
import 'package:flutter_application_1/widget/cart_item_samples.dart'; // Corrected import path
import 'package:flutter_application_1/widget/cart_app_bar.dart'; // Assuming there's a CartAppBar widget
import 'package:flutter_application_1/widget/cartitames_sample.dart';
import 'package:flutter_application_1/widget/crate_page.dart'; // Assuming there's a CratePage widget

class CartPage extends StatefulWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          CartAppBar(), // Assuming this widget exists
          Container(
            height: 700,
            padding: EdgeInsets.only(top: 15),
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 234, 229, 229),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(35),
                topRight: Radius.circular(35),
              ),
            ),
            child: Column(
              children: [
                CartItemSamples(), // Assuming this widget exists
                Container(
                  margin: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
                  padding: EdgeInsets.all(10),
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.lightBlue,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(vertical: 10), 
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.add,
                                  color: Colors.white,
                                ),
                                SizedBox(width: 5),
                                Text(
                                  "Add coupon code",
                                  style: TextStyle(
                                    color: const Color.fromARGB(255, 143, 219, 255),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          // Add more widgets here as needed
        ],
      ),
      bottomNavigationBar: cartbottomNavbar(),
    );
  }
}
