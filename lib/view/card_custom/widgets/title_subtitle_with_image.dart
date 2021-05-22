import 'package:flutter/material.dart';
import 'package:meelz/utils/style/styles.dart';

class TitleSubtitleWithImage extends StatelessWidget {
  const TitleSubtitleWithImage({
    Key key,
    @required this.naslov,
    @required this.subnaslov,
    @required this.cijena,
  }) : super(key: key);

  final String naslov;
  final String subnaslov;
  final String cijena;

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
              width: MediaQuery.of(context).size.width * 0.6,
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
            width: MediaQuery.of(context).size.width * 0.6,
            child: Text(
              "AED " + cijena,
              softWrap: false,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: styleListItemsBold,
            ),
          ),
        ]);
  }
}
