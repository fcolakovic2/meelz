import 'package:flutter/material.dart';
import 'package:meelz/view/order_details_screen/widgets/icon_back.dart';
import 'package:meelz/utils/style/styles.dart';

AppBar appBarCustom2(context, text) {
  return AppBar(
    automaticallyImplyLeading: false,
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
          // width: ScreenUtil().setWidth(244),
          child: Text(
            text,
            style: appBarText,
          ),
        ),
        Container(
          width: 20,
          // child: IconButton(
          //   icon: Icon(Icons.more_vert),
          //   color: Colors.black,
          //   onPressed: () {},
          // ),
        ),
      ],
    ),
  );
}
