import 'package:flutter/material.dart';

class DividerLinija extends StatelessWidget {
  const DividerLinija({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
      child: Divider(
        thickness: 1,
        indent: 26,
        endIndent: 21,
        color: Color(0xFFEEEEEE),
      ),
    );
  }
}
