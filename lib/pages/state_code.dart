// ignore_for_file: prefer_final_fields

import 'package:flutter/foundation.dart';

class CartState extends ChangeNotifier {
  // List to hold items in the cart
  List<String> _cartItems = [];

  // Getter to get the current list of cart items
  List<String> get cartItems => _cartItems;

  // Method to add an item to the cart
  void addItemToCart(String item) {
    _cartItems.add(item);
    // Notify listeners that the state has changed
    notifyListeners();
  }

  // Method to remove an item from the cart
  void removeItemFromCart(String item) {
    _cartItems.remove(item);
    // Notify listeners that the state has changed
    notifyListeners();
  }
}
