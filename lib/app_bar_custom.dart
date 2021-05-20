import 'package:flutter/material.dart';
import 'package:meelz/icon_back.dart';
import 'package:meelz/utils/style/styles.dart';

AppBar appBarCustom2(text) {
  return AppBar(
    centerTitle: true,
    elevation: 0,
    backgroundColor: Colors.white,
    title: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          child: IconBack(),
        ),
        Container(
          child: Text(text, style: stilNaslova),
        ),
        Container(
          child: Icon(Icons.more_vert),
        ),
      ],
    ),
  );
}
