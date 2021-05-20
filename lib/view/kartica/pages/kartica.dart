import 'package:flutter/material.dart';
import 'package:meelz/view/kartica/widgets/kartica_bez_slike.dart';
import 'package:meelz/view/kartica/widgets/kartica_sa_slikom.dart';

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
        shape: widget.image == ""
            ? RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              )
            : RoundedRectangleBorder(),
        child: widget.image != ""
            ? KarticaSaSlikom(
                naslov: widget.title,
                subnaslov: widget.subtitle,
                srcslike: widget.image,
                cijena: widget.cijena,
              )
            : KarticaBezSlike(
                naslov: widget.title,
                podnaslov: widget.subtitle,
                cijena: widget.cijena,
              ),
      ),
    );
  }
}
