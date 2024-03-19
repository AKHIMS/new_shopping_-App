// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class CartAppBar extends StatelessWidget {
  const CartAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(25),
      child: Row(
        children: [
          InkWell(
            onTap: () {
              Navigator.pop(context);
              // Add your onTap functionality here
            },
            child: Icon(
              Icons.arrow_back,
              size: 30,
              color: Color(0xFF4C52A5),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 20,
            ),
            child: Text(
              "cart",
              style: TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.bold,
                color: Color(0xFF4C52A5),
              ),
            ),
          ),
          Spacer(),
          Icon(
            Icons.more_vert,
            size: 30,
            color: Color(0xFF4C52A5),
          ),
        ],
      ),
    );
  }
}
