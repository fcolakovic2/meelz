import 'package:flutter/material.dart';
import 'package:meelz/view/card_custom/widgets/pending_chip.dart';
import 'package:meelz/view/card_custom/widgets/price_without_image.dart';
import 'package:meelz/view/card_custom/widgets/title_dots_without_image.dart';
import 'package:meelz/view/orders_screen/widgets/card_custom/widgets/delivery_date_chip.dart';
import 'package:meelz/view/orders_screen/widgets/card_custom/widgets/subtitle_without_image.dart';

class CardWithoutImage extends StatelessWidget {
  const CardWithoutImage({
    Key key,
    @required this.naslov,
    @required this.podnaslov,
    @required this.cijena,
    @required this.status,
    @required this.dateStr,
    @required this.date,
  }) : super(key: key);

  final String naslov;
  final String podnaslov;
  final String cijena;
  final String status;
  final String dateStr;
  final DateTime date;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 8.0),
          child: TitleDots(naslov: naslov),
        ),
        SubtitleWithoutImage(podnaslov: podnaslov),
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
