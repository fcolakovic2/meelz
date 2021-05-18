import 'package:flutter/material.dart';

TextStyle appBarText = TextStyle(
  fontWeight: FontWeight.w500,
  color: Color(0xff373737),
  fontSize: 26,
  letterSpacing: -0.5,
);

TextStyle itemSlider = TextStyle(
  fontWeight: FontWeight.w500,
  fontFamily: "Inter",
  fontSize: 14,
  letterSpacing: 0.5,
);

BoxDecoration appBarBorder() {
  return BoxDecoration(
    border: Border(
      bottom: BorderSide(
        color: Color(0xffEEEEEE),
        width: 1,
      ),
    ),
  );
}
