import 'package:flutter/material.dart';

class PendingChip extends StatelessWidget {
  const PendingChip({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Chip(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(6))),
      backgroundColor: Color(0xffFFDF36),
      label: Text(
        "Pending",
        style: TextStyle(
          fontFamily: "Inter",
          fontSize: 12,
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.w500,
          color: Color(0xff68572D),
        ),
      ),
    );
  }
}
