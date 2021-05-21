import 'package:flutter/material.dart';
import 'package:meelz/utils/style/styles.dart';

TextButton customButton(BuildContext context) {
  return TextButton(
    style: ButtonStyle(
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.0),
        )),
        backgroundColor: MaterialStateProperty.all(Color(0xffFFDF36))),
    onPressed: () {},
    child: Padding(
      padding: EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 6.0),
            child: Icon(
              Icons.thumb_up_outlined,
              color: Color(0xff68572D),
            ),
          ),
          Text(
            'Rate this order',
            style: rateThisOrder,
          ),
        ],
      ),
    ),
  );
}
