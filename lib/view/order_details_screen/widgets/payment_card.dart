import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:meelz/utils/style/styles.dart';

class PaymentKartica extends StatelessWidget {
  final String naslov = "test";
  final String subnaslov = "test";
  final String srcslike = "test";
  final String cijena = "test";

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        elevation: 0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(children: <Widget>[
              Padding(
                padding:
                    const EdgeInsets.only(left: 15.0, top: 10.0, right: 15.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      children: [
                        SvgPicture.asset("assets/images/Vectorpayment.svg"),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
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
              ),
            ]),
            Padding(
              padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
              child: Divider(
                thickness: 1,
                indent: 26,
                endIndent: 21,
                color: Color(0xFFEEEEEE),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 15.0, right: 15.0, bottom: 15.0),
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
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 15.0, right: 15.0, bottom: 15.0),
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
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 15.0, right: 15.0, bottom: 10.0),
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
            ),
            Padding(
              padding: const EdgeInsets.only(top: 0.0, bottom: 10.0),
              child: Divider(
                thickness: 1,
                indent: 26,
                endIndent: 21,
                color: Color(0xFFEEEEEE),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 15.0, right: 15.0, bottom: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text("Total", style: totalnoopacity),
                  Text("AED 1530", style: total),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
