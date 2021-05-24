import 'package:flutter/material.dart';
import 'package:meelz/utils/style/styles.dart';

class PriceWithoutImage extends StatelessWidget {
  const PriceWithoutImage({
    Key key,
    @required this.cijena,
  }) : super(key: key);

  final String cijena;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 65,
      child: FittedBox(
        fit: BoxFit.fitWidth,
        child: Text(
          cijena,
          style: stilCijene,
        ),
      ),
    );
  }
}
