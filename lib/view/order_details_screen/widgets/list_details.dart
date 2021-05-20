import 'package:flutter/material.dart';
import 'package:meelz/utils/style/styles.dart';

class ListDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 38.0),
      child: ListView(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Status",
                style: styleListItems,
              ),
              Text(
                "Delivery expected",
                style: styleListItems,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
