import 'package:flutter/material.dart';

class FavProvider extends ChangeNotifier {
  List<int> _FavList = [];
  List<int> get FavList => _FavList;

  void addFav(int index) {
    _FavList.add(index);
    notifyListeners();
  }

  void remFav(index) {
    _FavList.remove(index);
    notifyListeners();
  }
}
