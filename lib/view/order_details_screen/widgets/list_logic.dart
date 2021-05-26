import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:meelz/utils/style/styles.dart';
import 'package:meelz/viewModel/order_screens_model.dart';

Row listLogic(leftElement, rightElement) {
  return Row(
    children: [
      OrderScreensViewModel().deliveryOrReceiptModel(leftElement)
          ? Material(
              color: Colors.transparent,
              child: new InkWell(
                customBorder: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                splashColor: Colors.orange[100],
                onTap: () {
                  print("tapped");
                },
                child: Row(
                  children: [
                    new Container(
                      height: 40,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            rightElement,
                            style: styleListItems,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 14.0),
                      child: Container(
                        child: OrderScreensViewModel()
                                .checkIfItsNotPaymentReceiptModel(leftElement)
                            ? SvgPicture.asset("assets/images/Vectornew.svg")
                            : SvgPicture.asset("assets/images/Group2313.svg"),
                      ),
                    )
                  ],
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
