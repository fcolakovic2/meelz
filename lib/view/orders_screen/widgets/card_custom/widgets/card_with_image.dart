import 'package:flutter/material.dart';
import 'package:meelz/view/card_custom/widgets/price_image.dart';
import 'package:meelz/view/card_custom/widgets/title_subtitle_with_image.dart';

class CardWithImage extends StatelessWidget {
  const CardWithImage({
    Key key,
    @required this.naslov,
    @required this.subnaslov,
    @required this.srcslike,
    @required this.cijena,
  }) : super(key: key);

  final String naslov;
  final String subnaslov;
  final String srcslike;
  final String cijena;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(top: 15.0, left: 15.0, bottom: 1.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Container(
                    height: 40,
                    child: Image.asset(srcslike),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 13.0),
                child: TitleSubtitleWithImage(
                    naslov: naslov, subnaslov: subnaslov),
              ),
            ],
          ),
        ),
        PriceImage(cijena: cijena)
      ],
    );
  }
}
