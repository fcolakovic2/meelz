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
    return Text(
      cijena,
      style: stilCijene,
    );
  }
}
