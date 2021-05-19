import 'package:flutter/material.dart';

class PageIndexProvider extends ChangeNotifier {
  int _pageIndex;

  int get pageIndex => _pageIndex;

  void changeIndex(value) {
    _pageIndex = value;
    notifyListeners();
  }
}
