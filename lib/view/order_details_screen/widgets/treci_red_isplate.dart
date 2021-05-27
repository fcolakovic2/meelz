import 'package:flutter/material.dart';
import 'package:meelz/utils/style/styles.dart';

class TreciRedIsplate extends StatelessWidget {
  const TreciRedIsplate({
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
            "VAT 5%",
            style: orderDelVAT,
          ),
          Text("AED 20", style: totalnoopacity),
        ],
      ),
    );
  }
}
