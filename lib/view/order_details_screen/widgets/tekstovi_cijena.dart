import 'package:flutter/material.dart';
import 'package:meelz/utils/style/styles.dart';

class TekstoviCijena extends StatelessWidget {
  const TekstoviCijena({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 28.0),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: Text(
                "Paid AED 1360",
                style: stilNaslovaPaymenta,
              ),
            ),
            Text("Visa ** 7948", style: stilVisa),
          ]),
    );
  }
}
