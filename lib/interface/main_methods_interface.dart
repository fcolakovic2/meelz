import 'package:flutter/material.dart';

abstract class MainMethodsInterface {
  Future<void> preferredOrientations();
  Size buildSize();
  MediaQuery scaleText(BuildContext context, Widget widget);
}
