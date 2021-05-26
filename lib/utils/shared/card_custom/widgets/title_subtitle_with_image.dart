import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meelz/utils/style/styles.dart';

class TitleSubtitleWithImage extends StatelessWidget {
  const TitleSubtitleWithImage(
      {Key key,
      @required this.naslov,
      @required this.subnaslov,
      @required this.cijena,
      @required this.kolicina})
      : super(key: key);

  final String naslov;
  final String subnaslov;
  final String cijena;
  final String kolicina;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(bottom: 7.0),
          child: Text(
            naslov,
            softWrap: false,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: stilNaslova,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 10.0),
          child: SizedBox(
            width: ScreenUtil().setWidth(210),
            child: Text(
              subnaslov,
              softWrap: false,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: stilPodnaslova,
            ),
          ),
        ),
        SizedBox(
          width: ScreenUtil().setWidth(210),
          child: kolicina != "1"
              ? Row(
                  children: [
                    Text(
                      "AED " + cijena,
                      style: stylePriceBold,
                    ),
                    Text(
                      "  x " + kolicina,
                      style: styleListItemsPom,
                    ),
                  ],
                )
              : Text(
                  "AED " + cijena,
                  style: stylePriceBold,
                ),
        ),
      ],
    );
  }
}
