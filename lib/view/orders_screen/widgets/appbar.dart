import 'package:flutter/material.dart';
import 'package:meelz/utils/dummy_data/dummy_data.dart';
import 'package:meelz/utils/style/styles.dart';
import 'package:meelz/view/orders_screen/widgets/icon_back.dart';
import 'package:meelz/view/orders_screen/widgets/tapbar_custom.dart';

AppBar appBarCustom(text) {
  return AppBar(
    centerTitle: true,
    elevation: 0,
    backgroundColor: Colors.white,
    bottom: PreferredSize(
      preferredSize: const Size.fromHeight(81.0),
      child: TapBarCustom(ordersList),
    ),
    title: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          child: IconBack(),
        ),
        Container(
          child: Text(
            text,
            style: appBarText,
          ),
        ),
        Container(
          width: 39,
        ),
      ],
    ),
  );
}