import 'package:flutter/material.dart';
import 'package:meelz/utils/style/styles.dart';

class TotalCijena extends StatelessWidget {
  const TotalCijena({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15.0, right: 15.0, bottom: 25.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text("Total", style: totalnoopacity),
          Text("AED 1530", style: total),
        ],
      ),
    );
  }
}
