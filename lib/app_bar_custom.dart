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
        Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Container(
            child: IconBack(),
          ),
        ),
        Container(
          child: Text(text, style: stilNaslovaAppBar),
        ),
        Container(
          child: IconButton(
            icon: Icon(Icons.more_vert),
            color: Colors.black,
            onPressed: () {},
          ),
        ),
      ],
    ),
  );
}
