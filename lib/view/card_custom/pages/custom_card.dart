import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:meelz/utils/shared/animations.dart';
import 'package:meelz/view/card_custom/widgets/card_with_image.dart';
import 'package:meelz/view/card_custom/widgets/card_without_image.dart';
import 'package:meelz/view/order_details_screen/pages/order_details.dart';

// ignore: must_be_immutable
class CustomCard extends StatefulWidget {
  String title, cijena, image, status, dateOrderStr, deliveryDateStr;
  var subTitleList;
  DateTime orderDate, deliveryDate;

  CustomCard(this.title, this.subTitleList, this.cijena, this.image,
      this.status, this.orderDate, this.deliveryDate) {
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
    return GestureDetector(
      onTap: () {
        widget.image == ""
            ? Navigator.of(context).push(
                createRouteToDown(
                  OrderDetails(widget.title, widget.status, widget.deliveryDate,
                      widget.cijena),
                ),
              )
            : null;
      },
      child: Center(
        child: Card(
          elevation: 0.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
            side: BorderSide(
              width: widget.image == "" ? 1 : 0,
              color: Color(0xffEEEEEE),
            ),
          ),
          child: widget.image != ""
              ? CardWithImage(
                  widget.title,
                  widget.subTitleList,
                  widget.image,
                  widget.cijena,
                )
              : CardWithoutImage(
                  widget.title,
                  widget.subTitleList,
                  widget.cijena,
                  widget.status,
                  widget.deliveryDateStr,
                  widget.deliveryDate,
                ),
        ),
      ),
    );
  }
}
