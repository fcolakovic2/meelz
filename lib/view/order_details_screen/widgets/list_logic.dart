import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:meelz/utils/style/styles.dart';
import 'package:meelz/viewModel/order_details_model.dart';

Row listLogic(leftElement, rightElement) {
  return Row(
    children: [
      OrderDetailsViewModel().deliveryOrReceiptModel(leftElement)
          ? Text(
              rightElement,
              style: styleListItems,
            )
          : Container(),
      !OrderDetailsViewModel().checkIfItsNotPaymentReceiptModel(leftElement)
          ? Padding(
              padding: const EdgeInsets.only(left: 14.0),
              child: Container(
                child: Material(
                  color: Colors.transparent,
                  child: InkWell(
                    splashColor: Colors.yellow[100],
                    child: SvgPicture.asset("assets/images/Group2313.svg"),
                    onTap: () {
                      print("tapped");
                    },
                  ),
                ),
              ),
            )
          : OrderDetailsViewModel().checkIfItsDeliveryModel(leftElement)
              ? Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Container(
                    child: Material(
                      color: Colors.transparent,
                      child: InkWell(
                        splashColor: Colors.yellow[100],
                        child: SvgPicture.asset("assets/images/Vectornew.svg"),
                        onTap: () {
                          print("tapped");
                        },
                      ),
                    ),
                  ),
                )
              : Text(
                  rightElement,
                  style: styleListItems,
                ),
    ],
  );
}
