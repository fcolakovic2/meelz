import 'package:flutter/material.dart';
import 'package:meelz/utils/shared/card_custom/widgets/delivery_date_chip.dart';
import 'package:meelz/utils/shared/card_custom/widgets/pending_chip.dart';
import 'package:meelz/utils/shared/card_custom/widgets/price_without_image.dart';
import 'package:meelz/utils/shared/card_custom/widgets/subtitle_without_image.dart';
import 'package:meelz/utils/shared/card_custom/widgets/title_dots_without_image.dart';

// ignore: must_be_immutable
class CardWithoutImage extends StatelessWidget {
  final String naslov;
  String subTitleStr;
  final String cijena;
  final String status;
  final String dateStr;
  final DateTime date;

  var subTitleList;

  CardWithoutImage(this.naslov, this.subTitleList, this.cijena, this.status,
      this.dateStr, this.date) {
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
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 8.0),
          child: TitleDots(naslov: naslov),
        ),
        SubtitleWithoutImage(podnaslov: subTitleStr),
        Padding(
          padding: const EdgeInsets.fromLTRB(18.0, 0, 20.0, 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(right: 5.0),
                child: Column(
                  children: <Widget>[
                    PendingChip(status),
                  ],
                ),
              ),
              Column(
                children: <Widget>[
                  DeliveryDateChip(date, dateStr),
                ],
              ),
              Spacer(),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  PriceWithoutImage(cijena: cijena),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
