// ignore_for_file: sized_box_for_whitespace, prefer_const_constructors

import 'package:flutter/material.dart';

class CategoriesWidget extends StatelessWidget {
  const CategoriesWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150, // Set a fixed height for the container
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: List.generate(8, (index) {
            // Generating image paths based on index
            String imagePath = "images/image${index + 1}.png";
            return Container(
              margin: EdgeInsets.only(right: 10.0), // Added spacing between images
              width: 60,
              height: 60, // Set a fixed width for each image container
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(40),
              ),
              child: Stack(
                children: [
                  Image.asset(
                    imagePath, // Use generated image path
                    fit: BoxFit.fitHeight,
                    width:40,
                    height:40,
                  ),
                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Container(
                      padding: EdgeInsets.all(4),
                      child: Text(
                        "sandal",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 13,
                          color: Color.fromARGB(255, 62, 62, 63),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            );
          }),
        ),
      ),
    );
  }
}
