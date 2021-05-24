import 'package:flutter/material.dart';
import 'package:meelz/utils/style/styles.dart';

// ignore: must_be_immutable
class DeliveryDateChip extends StatelessWidget {
  DateTime date;
  String dateStr;
  DeliveryDateChip(this.date, this.dateStr);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: decorationChipDelivery(),
      height: 22,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10.0, right: 10.0),
            child: date.isBefore(DateTime.now())
                ? Text(
                    "Delivered $dateStr",
                    style: stilDelivery,
                  )
                : Text(
                    "$dateStr delivery",
                    style: stilDelivery,
                  ),
          ),
        ],
      ),
    );
  }
}