import 'package:flutter/material.dart';

class NaslovPodnaslovSaSlikom extends StatelessWidget {
  const NaslovPodnaslovSaSlikom({
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
            style: TextStyle(
              fontFamily: "Inter",
              fontSize: 16,
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.w500,
              color: Color(0xff373737),
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.6,
            child: Text(
              subnaslov,
              softWrap: false,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontFamily: "Inter",
                fontSize: 14,
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w500,
                color: Color(0xff373737).withOpacity(0.8),
              ),
            ),
          ),
        ]);
  }
}
