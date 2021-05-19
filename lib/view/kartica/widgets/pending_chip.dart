import 'package:flutter/material.dart';
import 'package:meelz/utils/style/styles.dart';

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
        style: stilPending,
      ),
    );
  }
}
