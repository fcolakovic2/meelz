import 'package:flutter/material.dart';
import 'package:meelz/utils/style/styles.dart';

class TitleDots extends StatelessWidget {
  const TitleDots({
    Key key,
    @required this.naslov,
  }) : super(key: key);

  final String naslov;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Column(
          children: [
            Text(
              naslov,
              softWrap: false,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: stilNaslova,
            ),
          ],
        ),
        // Column(
        //   children: <Widget>[
        //     Icon(Icons.more_vert),
        //   ],
        // ),
      ],
    );
  }
}
