import 'package:flutter/material.dart';
import 'package:meelz/utils/style/styles.dart';

class DrugiRedIsplate extends StatelessWidget {
  const DrugiRedIsplate({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15.0, right: 15.0, bottom: 15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            "Delivery",
            style: orderDelVAT,
          ),
          Text("AED 0", style: totalnoopacity),
        ],
      ),
    );
  }
}
