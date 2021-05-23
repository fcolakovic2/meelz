import 'package:flutter/material.dart';
import 'package:meelz/utils/dummy_data/dummy_data.dart';
import 'package:meelz/view/card_custom/pages/custom_card.dart';
import 'package:meelz/view/order_details_screen/widgets/payment_card.dart';

List<Widget> widgetsListDetails(title) {
  CustomCard pom;
  for (var i = 0; i < cardsList.length; i++) {
    if (cardsList[i].title == title) {
      pom = cardsList[i];
      break;
    }
  }
  return [
    NotificationListener<OverscrollIndicatorNotification>(
      // ignore: missing_return
      onNotification: (overscroll) {
        overscroll.disallowGlow();
      },
      child: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 30, 20, 45),
            child: CustomCard(
                pom.title,
                pom.subTitleList,
                "assets/images/Vector.png",
                pom.status,
                pom.orderDate,
                pom.deliveryDate),
          ),
        ],
      ),
    ),
    ListView(children: [
      Padding(
        padding: const EdgeInsets.fromLTRB(20, 30, 20, 45),
        child: PaymentKartica(),
      ),
    ]),
  ];
}
