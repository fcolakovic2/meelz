import 'package:flutter/material.dart';
import 'package:meelz/utils/style/styles.dart';

class PodnaslovBezSlike extends StatelessWidget {
  const PodnaslovBezSlike({
    Key key,
    @required this.podnaslov,
  }) : super(key: key);

  final String podnaslov;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 20.0, bottom: 10.0),
          child: SizedBox(
            width: MediaQuery.of(context).size.width * 0.8,
            child: Text(
              podnaslov,
              softWrap: false,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: stilPodnaslova,
            ),
          ),
        ),
      ],
    );
  }
}
