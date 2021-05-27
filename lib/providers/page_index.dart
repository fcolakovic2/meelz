import 'package:flutter/material.dart';

class PageIndexProvider extends ChangeNotifier {
  int _pageIndex = 0;

  int get pageIndex => _pageIndex;

  void changeIndex(value) {
    _pageIndex = value;
    notifyListeners();
  }
}
