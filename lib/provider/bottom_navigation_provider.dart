import 'package:flutter/material.dart';

class BottomNavigationProvider extends ChangeNotifier {
  int selectedIndex = 1;

  void updateIndex(int index) {
    selectedIndex = index;
    notifyListeners();
  }
}
