import 'package:flutter/material.dart';
import 'package:meelz/utils/style/styles.dart';

Widget tabElement(text) {
  return Align(
    alignment: Alignment.centerLeft,
    child: Container(
      padding: const EdgeInsets.only(right: 35, bottom: 20),
      child: Text(
        text,
        style: itemSlider,
      ),
    ),
  );
}
