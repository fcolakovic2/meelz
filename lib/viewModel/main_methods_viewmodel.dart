import 'package:flutter/material.dart';
import 'package:meelz/services/main_methods.dart';

class MainMethodsViewModel {
  Future<void> preferredOrientationsViewModel() {
    return MainMethodsServices().preferredOrientations();
  }

  Size buildSizeViewModel() {
    return MainMethodsServices().buildSize();
  }

  MediaQuery scaleTextViewModel(BuildContext context, Widget widget) {
    return MainMethodsServices().scaleText(context, widget);
  }
}
