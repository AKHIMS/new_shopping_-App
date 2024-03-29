// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/cart_pages.dart';
import 'package:flutter_application_1/pages/items_pages.dart';
import 'package:flutter_application_1/welcome_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
     
      ),
      initialRoute: '/',
      routes: {
       "/":(context)=>WelcomePage(),
      "cartpage": (context)=>CartPage(),
      "itemspages":(context) => ItemsPage(),
      }
     
    );
  }
}

