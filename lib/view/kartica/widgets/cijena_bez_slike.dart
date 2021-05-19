import 'package:flutter/material.dart';
import 'package:meelz/utils/style/styles.dart';

class CijenaBezSlike extends StatelessWidget {
  const CijenaBezSlike({
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
