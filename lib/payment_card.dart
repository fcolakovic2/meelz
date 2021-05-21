import 'package:flutter/material.dart';
import 'package:meelz/utils/style/styles.dart';

class PaymentKartica extends StatelessWidget {
  final String naslov = "test";
  final String subnaslov = "test";
  final String srcslike = "test";
  final String cijena = "test";

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 15.0, top: 25.0, right: 5.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Row(
                children: [
                  Icon(Icons.wallet_giftcard_outlined),
                ],
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 28.0),
          child: Column(children: <Widget>[
            Row(mainAxisAlignment: MainAxisAlignment.start, children: <Widget>[
              Text(
                "AED150",
                style: stilNaslovaPaymenta,
              ),
            ]),
            Padding(
                padding: const EdgeInsets.only(
              bottom: 8.0,
            )),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[Text("Visa ** 7948", style: stilVisa)],
            ),
          ]),
        ),
      ]),
    );
  }
}
