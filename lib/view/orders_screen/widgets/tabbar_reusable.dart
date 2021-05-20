import 'package:flutter/material.dart';
import 'package:meelz/view/orders_screen/widgets/tabbar_custom.dart';

SizedBox tabBarReusable(ordersList) {
  return SizedBox(
    height: 81,
    child: AppBar(
      elevation: 0,
      backgroundColor: Colors.white,
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(81.0),
        child: Container(
          child: TabBarCustom(ordersList),
        ),
      ),
    ),
  );
}
