import 'package:flutter/material.dart';
import 'package:meelz/utils/style/styles.dart';

class AppBarOrders extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          child: Text(
            "Orders",
            style: AppBarText,
          ),
        ),
      ],
    );
  }
}
