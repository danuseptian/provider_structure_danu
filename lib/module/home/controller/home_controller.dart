import 'package:flutter/cupertino.dart';

class HomeController extends ChangeNotifier {
  int number = 0;

  void addNumber() {
    number++;
    notifyListeners();
  }

  void decreaseNumber() {
    number--;
    notifyListeners();
  }

  void resetNumber() {
    number = 0;
    notifyListeners();
  }
}
