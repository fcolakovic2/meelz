import 'package:flutter/material.dart';
import 'package:meelz/services/order_screens_services.dart';
import 'package:meelz/utils/style/styles.dart';
import 'package:meelz/view/order_details_screen/widgets/list_logic.dart';
import 'package:meelz/view/order_details_screen/widgets/row_with_status.dart';
import 'package:meelz/viewModel/order_screens_model.dart';

Container listDetailsRow(leftElement, rightElement) {
  return Container(
    decoration:
        OrderScreensViewModel().checkIfItsNotPaymentReceiptModel(leftElement)
            ? listBorder()
            : BoxDecoration(),
    child: Padding(
      padding: OrderScreensService().checkIfItsDelivery(leftElement)
          ? const EdgeInsets.only(bottom: 5.0, top: 0)
          : const EdgeInsets.only(bottom: 18.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            leftElement,
            style: styleListItems,
          ),
          OrderScreensService().checkIfItsStatus(leftElement)
              ? rowWithStatus(rightElement)
              : OrderScreensService().checkIfItsPrice(leftElement)
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
