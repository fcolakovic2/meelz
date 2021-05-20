import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:meelz/view/kartica/widgets/card_without_image.dart';
import 'package:meelz/view/kartica/widgets/card_with_image.dart';

// ignore: must_be_immutable
class CustomCard extends StatefulWidget {
  String title, subtitle, cijena, image, status, dateOrderStr, deliveryDateStr;
  DateTime orderDate, deliveryDate;

  CustomCard(this.title, this.subtitle, this.cijena, this.image, this.status,
      this.orderDate, this.deliveryDate) {
    dateOrderStr =
        DateFormat('MMM ${orderDate.day}, yyyy – kk:mm').format(orderDate);
    deliveryDateStr =
        DateFormat('MMM ${deliveryDate.day}').format(deliveryDate);
  }

  @override
  _CustomCardState createState() => _CustomCardState();
}

class _CustomCardState extends State<CustomCard> {
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
            ? CardWithImage(
                naslov: widget.title,
                subnaslov: widget.subtitle,
                srcslike: widget.image,
                cijena: widget.cijena,
              )
            : CardWithoutImage(
                naslov: widget.title,
                podnaslov: widget.subtitle,
                cijena: widget.cijena,
                status: widget.status,
                dateStr: widget.deliveryDateStr,
                date: widget.deliveryDate,
              ),
      ),
    );
  }
}
