import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:meelz/utils/style/styles.dart';

Row listLogic(leftElement, rightElement) {
  return Row(
    children: [
      leftElement == "Delivery address" || leftElement == "Payment receipt"
          ? Text(
              rightElement,
              style: styleListItems,
            )
          : Container(),
      leftElement == "Payment receipt"
          ? Padding(
              padding: const EdgeInsets.only(left: 14.0),
              child: Container(
                // height: 19,
                // width: 16,
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
          : leftElement == "Delivery address"
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
