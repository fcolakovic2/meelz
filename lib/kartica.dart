import 'package:flutter/material.dart';

class OrderKartica extends StatefulWidget {
  String title, subtitle, cijena, image;

  OrderKartica(this.title, this.subtitle, this.cijena, this.image);
  @override
  _OrderKarticaState createState() => _OrderKarticaState();
}

class _OrderKarticaState extends State<OrderKartica> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text(
                  widget.title,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text(
                  widget.subtitle,
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Align(
                  child: Text(
                    widget.cijena,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
