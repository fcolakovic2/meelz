import 'package:flutter/material.dart';
import 'package:meelz/services/order_details_services.dart';
import 'package:meelz/utils/style/styles.dart';
import 'package:meelz/view/order_details_screen/widgets/list_logic.dart';
import 'package:meelz/view/order_details_screen/widgets/row_with_status.dart';
import 'package:meelz/viewModel/order_details_model.dart';

Container listDetailsRow(leftElement, rightElement) {
  return Container(
    decoration:
        OrderDetailsViewModel().checkIfItsNotPaymentReceiptModel(leftElement)
            ? listBorder()
            : BoxDecoration(),
    child: Padding(
      padding: const EdgeInsets.only(bottom: 18.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            leftElement,
            style: styleListItems,
          ),
          OrderDetailsService().checkIfItsStatus(leftElement)
              ? rowWithStatus(rightElement)
              : OrderDetailsService().checkIfItsPrice(leftElement)
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

checkIfItsStatusModel(leftElement) {}
