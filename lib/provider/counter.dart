import 'package:flutter/material.dart';

class MyAppState extends ChangeNotifier {
  int _count = 0; //it is Private Variable _count '_' mean Private
  int get count => _count;

  void setCount() {
    _count++;
    notifyListeners(); // Notify listeners to rebuild widgets that depend on this state
  }
}
