import 'package:flutter/material.dart';
import 'package:meelz/utils/style/styles.dart';

class PrviRedIsplate extends StatelessWidget {
  const PrviRedIsplate({
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
            "Order summary",
            style: orderDelVAT,
          ),
          Text("AED 1550", style: totalnoopacity),
        ],
      ),
    );
  }
}
