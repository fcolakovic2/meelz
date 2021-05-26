import 'package:flutter/material.dart';
import 'package:meelz/view/order_details_screen/widgets/divider_linija.dart';
import 'package:meelz/view/order_details_screen/widgets/drugi_red_isplate.dart';
import 'package:meelz/view/order_details_screen/widgets/prvi_red_isplate.dart';
import 'package:meelz/view/order_details_screen/widgets/slika_payment.dart';
import 'package:meelz/view/order_details_screen/widgets/tekstovi_cijena.dart';
import 'package:meelz/view/order_details_screen/widgets/total_cijena.dart';
import 'package:meelz/view/order_details_screen/widgets/treci_red_isplate.dart';

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
              SlikaPaymentKartice(),
              TekstoviCijena(),
            ]),
            DividerLinija(),
            PrviRedIsplate(),
            DrugiRedIsplate(),
            TreciRedIsplate(),
            DividerLinija(),
            TotalCijena(),
          ],
        ),
      ),
    );
  }
}
