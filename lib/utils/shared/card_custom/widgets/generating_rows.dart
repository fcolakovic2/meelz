import 'package:flutter/material.dart';
import 'package:meelz/utils/shared/card_custom/widgets/title_subtitle_with_image.dart';
import 'package:meelz/utils/style/styles.dart';

Widget helpingMethodGeneratingRows(subTitleListElement, [index]) {
  return Padding(
    padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
    child: Container(
      decoration: index == null ? listBorder() : null,
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
                kolicina: subTitleListElement['quantity'],
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
