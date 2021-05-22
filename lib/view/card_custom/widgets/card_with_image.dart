import 'package:flutter/material.dart';
import 'package:meelz/utils/style/styles.dart';
import 'package:meelz/view/card_custom/widgets/price_image.dart';
import 'package:meelz/view/card_custom/widgets/title_subtitle_with_image.dart';

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
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(
              top: .0, left: 15.0, right: 15, bottom: 1.0),
          child: Column(
            children: [
              Container(
                decoration: listBorder(),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 25, 0, 20),
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          naslov,
                          style: cardLeftTitleDetails,
                        ),
                        Text("Gekko & Co"),
                      ],
                    ),
                  ),
                ),
              ),
              Column(
                children: cardWithImageElement(),
              )
            ],
          ),
        ),
      ],
    );
  }

  List<Widget> cardWithImageElement() {
    return List<Widget>.generate(
      subTitleList.length,
      (counter) => helpingMethodGeneratingRows(subTitleList[counter]),
    );
  }

  Widget helpingMethodGeneratingRows(subTitleListElement) {
    return Container(
      decoration: listBorder(),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0, 15, 0, 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Column(
              children: <Widget>[
                Container(
                  height: 50,
                  width: 50,
                  child: Image.asset(subTitleListElement['img']),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 13.0),
              child: TitleSubtitleWithImage(
                naslov: subTitleListElement['title'],
                subnaslov: subTitleListElement['description'],
                cijena: subTitleListElement['price'],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
