import 'package:flutter/material.dart';

class BookmarkController extends ChangeNotifier {
  final List<String> _favouriteItems = [];

  List<String> get favouriteItems => _favouriteItems;

  void toogleFavourite(String itemName) {
    if (_favouriteItems.contains(itemName)) {
      favouriteItems.remove(itemName);
    } else {
      _favouriteItems.add(itemName);
    }
    notifyListeners();
  }

  bool isContain(String itemName) {
    return _favouriteItems.contains(itemName);
  }
}
