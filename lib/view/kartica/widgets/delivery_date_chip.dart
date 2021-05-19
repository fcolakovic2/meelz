import 'package:flutter/material.dart';

class DeliveryDateChip extends StatelessWidget {
  const DeliveryDateChip({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Chip(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(6))),
      backgroundColor: Color(0xffF6F6F6),
      label: Text(
        "Feb 13 delivery",
        style: TextStyle(
          fontFamily: "Inter",
          fontSize: 12,
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.w500,
          color: Color(0xff373737),
        ),
      ),
    );
  }
}
