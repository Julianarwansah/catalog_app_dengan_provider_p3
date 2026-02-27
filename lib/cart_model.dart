import 'package:flutter/material.dart';

// 1. STATE MODEL (BUSINESS LOGIC) ---
class CartModel extends ChangeNotifier {
  final List<String> _items = [];

  List<String> get items => _items;

  void add(String itemName) {
    _items.add(itemName);
    // Perhatikan code ini Memberitahu UI untuk update!
    notifyListeners();
  }

  void removeAll() {
    _items.clear();
    notifyListeners();
  }
}