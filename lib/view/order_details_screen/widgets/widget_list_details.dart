import 'package:flutter/material.dart';
import 'package:meelz/utils/dummy_data/dummy_data.dart';
import 'package:meelz/utils/shared/card_custom/pages/custom_card.dart';
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
    Container(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 30, 20, 45),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CustomCard(pom.title, pom.subTitleList, "assets/images/Vector.png",
                pom.status, pom.orderDate, pom.deliveryDate),
          ],
        ),
      ),
    ),
    Column(
      // physics: const NeverScrollableScrollPhysics(),
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 30, 20, 45),
          child: PaymentKartica(),
        ),
      ],
    ),
  ];
}
