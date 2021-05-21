import 'package:flutter/material.dart';
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
                height: 19,
                width: 16,
                child: Material(
                  color: Colors.transparent,
                  child: InkWell(
                    splashColor: Colors.blue[100],
                    child: Image.asset('assets/images/Group.png'),
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
                    height: 26,
                    width: 26,
                    child: Material(
                      color: Colors.transparent,
                      child: InkWell(
                        splashColor: Colors.blue[100],
                        child: Image.asset('assets/images/Vector.png'),
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
