// ignore_for_file: camel_case_types, prefer_const_literals_to_create_immutables, prefer_const_constructors, unnecessary_import

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class cartbottomNavbar extends StatefulWidget {
  const cartbottomNavbar({super.key});

  @override
  State<cartbottomNavbar> createState() => _cartbottomNavbarState();
}

class _cartbottomNavbarState extends State<cartbottomNavbar> {
  @override
  Widget build(BuildContext context) {
    return  Container(
padding:  EdgeInsets.symmetric(
  horizontal: 20,vertical: 15
),
height: 130,
child: Column(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: [
    Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [Text(
        "total:",
        style: TextStyle(
          color: 
          Colors.lightBlue,
        ),
      ),
      Text(
       "\$250",
       style: TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.bold,
        color: Colors.red,
       ),
      ),
      
      ],
    ),
    Container(
      alignment: Alignment.center,
      height: 40,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.lightBlue,
        borderRadius: BorderRadius.circular(100),
      ),
        child: Text(
          "check out",
          style: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
    ),

  ],
),




    );
  }
}