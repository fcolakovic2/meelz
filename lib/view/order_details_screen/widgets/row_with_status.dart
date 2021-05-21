import 'package:flutter/material.dart';
import 'package:meelz/utils/style/styles.dart';

Row rowWithStatus(rightElement) {
  return Row(
    children: [
      rightElement.contains("Delivery")
          ? Padding(
              padding: const EdgeInsets.only(right: 5.0),
              child: Icon(
                Icons.fiber_manual_record,
                size: 12,
                color: Color(0xFFFFDF36),
              ),
            )
          : Padding(
              padding: const EdgeInsets.only(right: 5.0),
              child: Icon(
                Icons.fiber_manual_record,
                size: 12,
                color: Color(0xFF47D7AC),
              ),
            ),
      Text(
        rightElement,
        style: styleListItems,
      ),
    ],
  );
}
