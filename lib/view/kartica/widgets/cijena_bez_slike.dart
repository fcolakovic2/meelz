import 'package:flutter/material.dart';

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
      style: TextStyle(
        fontSize: 16,
        fontFamily: "Inter",
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w500,
        color: Color(0xff373737),
      ),
    );
  }
}
