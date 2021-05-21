import 'package:flutter/material.dart';
import 'package:meelz/utils/style/styles.dart';
import 'package:meelz/view/order_details_screen/widgets/list_logic.dart';
import 'package:meelz/view/order_details_screen/widgets/row_with_status.dart';

Container listDetailsRow(leftElement, rightElement) {
  return Container(
    decoration: listBorder(),
    child: Padding(
      padding: const EdgeInsets.only(bottom: 18.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            leftElement,
            style: styleListItems,
          ),
          leftElement == "Status"
              ? rowWithStatus(rightElement)
              : leftElement == "Total price"
                  ? Text(
                      rightElement,
                      style: styleListItemsBold,
                    )
                  : listLogic(leftElement, rightElement),
        ],
      ),
    ),
  );
}
