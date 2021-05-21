import 'package:flutter/material.dart';

TextButton customButton() {
  return TextButton(
    style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.red)),
    onPressed: () {},
    child: Padding(
      padding: EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Icon(
            Icons.thumb_up,
            color: Colors.white,
          ),
          Text(
            'Rate this order',
            style: TextStyle(
              fontSize: 25,
            ),
          ),
        ],
      ),
    ),
  );
}
