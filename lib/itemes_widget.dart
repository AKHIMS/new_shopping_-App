// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/items_pages.dart';

class ItemsWidget extends StatelessWidget {
  const ItemsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      childAspectRatio: 0.65,
      physics: NeverScrollableScrollPhysics(),
      crossAxisCount: 2,
      shrinkWrap: true,
      children: List.generate(7, (index) {
        final String imagePath = "images/image${index + 1}.png"; // Define the image path
        return Container(
          padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
          margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Text(
                      "-40%",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  const Icon(Icons.favorite_border, color: Colors.red),
                ],
              ),
              InkWell(
                onTap: () {
                  // Navigator.pushNamed(context, "ItemsPage");
                 Navigator.push(context, MaterialPageRoute(builder: (context) =>ItemsPage()));
                },
                child: Container(
                  margin: const EdgeInsets.all(10),
                  child: Image.asset(
                    imagePath,
                    height: 120,
                    width: 120,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(bottom: 8),
                child: Text(
                  "Product Title",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(bottom: 8),
                child: Text(
                  "Something Here",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.blue,
                  ),
                ),
              ),
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "\$55",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                    ),
                  ),
                  Icon(Icons.shopping_cart_checkout_outlined, color: Colors.blue),
                ],
              ),
            ],
          ),
        );
      }),
    );
  }
}
