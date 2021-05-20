import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:meelz/view/kartica/widgets/kartica_bez_slike.dart';
import 'package:meelz/view/kartica/widgets/kartica_sa_slikom.dart';

// ignore: must_be_immutable
class OrderKartica extends StatefulWidget {
  String title, subtitle, cijena, image, status, datumStr;
  DateTime datum;

  OrderKartica(this.title, this.subtitle, this.cijena, this.image, this.status,
      this.datum) {
    datumStr = DateFormat('MMM ${datum.day}, yyyy – kk:mm').format(datum);
  }

  @override
  _OrderKarticaState createState() => _OrderKarticaState();
}

class _OrderKarticaState extends State<OrderKartica> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        elevation: 0.0,
        shape: widget.image == ""
            ? RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
                side: BorderSide(width: 1, color: Color(0xffEEEEEE)),
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
                status: widget.status,
              ),
      ),
    );
  }
}
