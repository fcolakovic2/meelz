import 'package:flutter/material.dart';

class PriceImage extends StatelessWidget {
  const PriceImage({
    Key key,
    @required this.cijena,
  }) : super(key: key);

  final String cijena;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 1.0, left: 70.0, bottom: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Column(
            children: <Widget>[
              Text(
                cijena,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
