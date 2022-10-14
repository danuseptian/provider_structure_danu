import 'package:flutter/cupertino.dart';

class MainNavigationController extends ChangeNotifier {
  int selectedIndex = 0;

  void onItemTapped(int index) {
    selectedIndex = index;
    notifyListeners();
  }
}
