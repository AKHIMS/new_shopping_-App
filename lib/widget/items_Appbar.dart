// ignore_for_file: camel_case_types, prefer_const_constructors, unnecessary_import, file_names

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemsAppbar extends StatefulWidget {
  const ItemsAppbar({Key ?key}) : super(key: key);

  @override
  State<ItemsAppbar> createState() => _ItemsAppbarState();
}

class _ItemsAppbarState extends State<ItemsAppbar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(25),
      child: Row(
        children: [
          InkWell(
            onTap: () {
              Navigator.pop(context);
            },
             child: Icon(
                Icons.arrow_back,
                size: 30,
                color: Colors.blue,
              ),
          ),
             Padding( padding:
               EdgeInsets.only(left: 20),
              child:Text("product",
              style: TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 71, 67, 55),
              ),
              ),
             
            ),
            Spacer(),
            Icon(Icons.favorite,
            size: 30,
            color: Colors.red,)
          
        
        ],
      ),
    );
  }
}
