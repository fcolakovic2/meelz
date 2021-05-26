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
    ListViewFirst(pom),
    Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 42, 20, 42),
          child: PaymentKartica(),
        ),
      ],
    ),
  ];
}

class ListViewFirst extends StatefulWidget {
  final CustomCard pom;
  ListViewFirst(this.pom);
  @override
  _ListViewFirstState createState() => _ListViewFirstState();
}

class _ListViewFirstState extends State<ListViewFirst> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 42, 20, 42),
          child: CustomCard(
              widget.pom.title,
              widget.pom.subTitleList,
              "assets/images/Vector.png",
              widget.pom.status,
              widget.pom.orderDate,
              widget.pom.deliveryDate),
        ),
      ],
    );
  }
}
