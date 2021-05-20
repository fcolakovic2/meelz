import 'package:flutter/material.dart';
import 'package:meelz/utils/style/styles.dart';

class TitleSubtitleWithImage extends StatelessWidget {
  const TitleSubtitleWithImage({
    Key key,
    @required this.naslov,
    @required this.subnaslov,
  }) : super(key: key);

  final String naslov;
  final String subnaslov;

  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            naslov,
            softWrap: false,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: stilNaslova,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.6,
            child: Text(
              subnaslov,
              softWrap: false,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: stilPodnaslova,
            ),
          ),
        ]);
  }
}
