import 'package:flutter/material.dart';

class NameState extends ChangeNotifier {
  String _name = '';
  String get name => _name;

  void setName(String newName) {
    _name =
        newName; // Example name, you can change this to get input from a TextField
    notifyListeners(); // Notify listeners to rebuild widgets that depend on this state
  }
}
