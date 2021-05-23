import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';
import 'package:meelz/utils/style/styles.dart';
import 'package:meelz/view/card_custom/widgets/card_with_image_element.dart';
import 'package:meelz/view/card_custom/widgets/generating_rows.dart';
import 'package:meelz/view/card_custom/widgets/title_subtitle_with_image.dart';
import 'package:meelz/viewModel/generate_random_string.dart';

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
          Padding(
            padding:
                const EdgeInsets.only(top: .0, left: 0, right: 0, bottom: 1.0),
            child: Column(
              children: [
                Container(
                  decoration: listBorder(),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(15, 25, 15, 20),
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
                  children: cardWithImageElement(subTitleList),
                ),
                Container(
                  decoration: listBorderUp(),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(15, 20, 15, 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Text(
                              "Track number: ",
                              style: trackOrderLight,
                            ),
                            Text(
                              generateRandomStringModel(9),
                              style: trackOrderDark,
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              "Track order",
                              style: trackOrderGreen,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 7.0),
                              child: SvgPicture.asset(
                                  "assets/images/Vector325.svg"),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
