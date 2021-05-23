import 'package:flutter/material.dart';
import 'package:meelz/utils/style/styles.dart';

AppBar appBarCustom(text) {
  return AppBar(
    automaticallyImplyLeading: false,
    centerTitle: true,
    elevation: 0,
    backgroundColor: Colors.white,
    title: Container(
      child: Text(
        text,
        style: appBarText,
      ),
    ),
  );
}
