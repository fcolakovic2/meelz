import 'package:flutter/material.dart';

class NaslovTackice extends StatelessWidget {
  const NaslovTackice({
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
              style: TextStyle(
                fontSize: 16,
                fontFamily: "Inter",
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w500,
                color: Color(0xff373737),
              ),
            ),
          ],
        ),
        Column(
          children: <Widget>[
            Icon(Icons.more_vert),
          ],
        ),
      ],
    );
  }
}
