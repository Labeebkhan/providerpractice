import 'package:flutter/material.dart';

class Todopro extends ChangeNotifier {
  List TodoList = [];

  void addTodo(String work) {
    TodoList.add(work);
    notifyListeners();
  }
}
