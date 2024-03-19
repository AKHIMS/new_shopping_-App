// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/cart_pages.dart';

class Badge extends StatefulWidget {
  final Color badgeColor;
  final EdgeInsets padding;
  final Widget badgeContent;

  const Badge({
    Key? key,
    required this.badgeColor,
    required this.padding,
    required this.badgeContent,
  }) : super(key: key);

  @override
  State<Badge> createState() => _BadgeState();
}

class _BadgeState extends State<Badge> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: widget.padding,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: widget.badgeColor,
      ),
      child: widget.badgeContent,
    );
  }
}

class HomeAppbar extends StatelessWidget {
  const HomeAppbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(25),
      child: Row(
        children: [
          Icon(
            Icons.sort,
            size: 30,
            color: Colors.lightBlue,
          ),
          Padding(
            padding: EdgeInsets.only(left: 20),
          ),
          Text(
            "DB SHOES",
            style: TextStyle(
              fontSize: 23,
              fontWeight: FontWeight.bold,
              color: Colors.lightBlue,
            ),
          ),
          Spacer(),
        
InkWell(
  onTap: () {
   Navigator.push(context, MaterialPageRoute(builder: (context) => CartPage(),));
  //Navigator.pushNamed(context, '/cartpage');
  },
  child: Stack(
    children: [
      Icon(
        Icons.shopping_bag_outlined,
        size: 30,
        color: Colors.lightBlue,
      ),
      Positioned(
     
        bottom: 8,
        child: Badge(
          badgeColor: Colors.red, // Choose your badge color
          padding: EdgeInsets.all(5),
          badgeContent: Text(
            '3', // Your badge content (number)
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    ],
  ),
),

        ],
      ),
    );
  }
}
