import 'package:flutter/material.dart';
import 'package:meelz/utils/style/styles.dart';

class DeliveryDateChip extends StatelessWidget {
  DateTime date;
  String dateStr;
  DeliveryDateChip(this.date, this.dateStr);

  @override
  Widget build(BuildContext context) {
    return Chip(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(6))),
      backgroundColor: Color(0xffF6F6F6),
      label: date.isBefore(DateTime.now())
          ? Text(
              "Delivered $dateStr",
              style: stilDelivery,
            )
          : Text(
              "$dateStr delivery",
              style: stilDelivery,
            ),
    );
  }
}
