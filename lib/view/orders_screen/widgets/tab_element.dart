import 'package:flutter/material.dart';
import 'package:meelz/utils/style/styles.dart';

Widget tabElement(text) {
  return Align(
    alignment: Alignment.centerLeft,
    child: Container(
      padding: const EdgeInsets.only(right: 30),
      child: Text(
        text,
        style: itemSlider,
      ),
    ),
  );
}
