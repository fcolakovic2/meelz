import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meelz/utils/shared/card_custom/widgets/title_subtitle_with_image.dart';
import 'package:meelz/utils/style/styles.dart';

Widget helpingMethodGeneratingRows(subTitleListElement, [index]) {
  return Padding(
    padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
    child: Container(
      // height: MediaQuery.of(context).size.height * 0.17,
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
                  height: ScreenUtil().setHeight(50),
                  width: ScreenUtil().setWidth(50),
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
