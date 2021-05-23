import 'package:flutter/material.dart';
import 'package:meelz/utils/style/styles.dart';
import 'package:meelz/view/card_custom/widgets/bottom_row_card.dart';
import 'package:meelz/view/card_custom/widgets/card_with_image_element.dart';
import 'package:meelz/view/card_custom/widgets/upper_row_card.dart';

// ignore: must_be_immutable
class CardWithImage extends StatelessWidget {
  final String naslov;
  String subTitleStr;
  final String srcslike;
  final String cijena;
  var subTitleList;

  CardWithImage(this.naslov, this.subTitleList, this.srcslike, this.cijena) {
    subTitleStr = "";
    for (var i = 0; i < subTitleList.length; i++) {
      subTitleStr = subTitleStr +
          subTitleList[i]['title'] +
          " " +
          subTitleList[i]['quantity'] +
          ", ";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: buildBoxDecoration(),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Column(
            children: [
              UpperRowCard(
                naslov: naslov,
                srcslike: srcslike,
                nazivRestorana: "Gekko & Co",
              ),
              Column(
                children: cardWithImageElement(subTitleList),
              ),
              BottomRowCard(),
            ],
          ),
        ],
      ),
    );
  }
}
