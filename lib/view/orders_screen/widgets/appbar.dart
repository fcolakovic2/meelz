import 'package:flutter/material.dart';
import 'package:meelz/utils/dummy_data/dummy_data.dart';
import 'package:meelz/utils/style/styles.dart';
import 'package:meelz/view/orders_screen/widgets/icon_back.dart';
import 'package:meelz/view/orders_screen/widgets/tabbar_custom.dart';

AppBar appBarCustom(text) {
  return AppBar(
    centerTitle: true,
    elevation: 0,
    backgroundColor: Colors.white,
    bottom: PreferredSize(
      preferredSize: const Size.fromHeight(81.0),
      child: Container(
        child: TabBarCustom(ordersList),
      ),
    ),
    title: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: 39,
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
