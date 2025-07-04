import 'package:flutter/material.dart';

class Examplepro extends ChangeNotifier {
  double _value = 5.0;
  double get value => _value; // Getter to access the value to be used in the UI

  void setValue(double valuenw) {
    _value = valuenw;
    notifyListeners();
  }
}
