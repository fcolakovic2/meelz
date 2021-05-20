import 'package:flutter/material.dart';
import 'package:meelz/utils/style/styles.dart';

class PendingChip extends StatelessWidget {
  var status;

  PendingChip(this.status);

  @override
  Widget build(BuildContext context) {
    return Chip(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(6))),
      backgroundColor:
          status == "Pending" ? Color(0xffFFDF36) : Color(0xff47D7AC),
      label: Text(
        status,
        style: status == "Pending" ? stilPending : stilShipped,
      ),
    );
  }
}
