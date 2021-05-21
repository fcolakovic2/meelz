import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:meelz/view/order_details_screen/widgets/app_bar_custom.dart';
import 'package:meelz/view/order_details_screen/widgets/customButton.dart';
import 'package:meelz/view/order_details_screen/widgets/list_details.dart';

class OrderDetails extends StatefulWidget {
  String title, status, cijena, deliveryDateStr, deliveryDateStrTitle;
  DateTime deliveryDate;

  OrderDetails(this.title, this.status, this.deliveryDate, this.cijena) {
    deliveryDateStr =
        DateFormat('MMM ${deliveryDate.day}, yyyy').format(deliveryDate);
    deliveryDateStrTitle = DateFormat('kk:mm').format(deliveryDate);

    deliveryDateStrTitle = deliveryDateStr + " at " + deliveryDateStrTitle;
  }

  @override
  _OrderDetailsState createState() => _OrderDetailsState();
}

class _OrderDetailsState extends State<OrderDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: appBarCustom2(widget.deliveryDateStrTitle),
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.46,
            child: ListDetails(widget.title, widget.status, widget.cijena,
                widget.deliveryDateStr),
          ),
          customButton(context),
        ],
      ),
    );
  }
}
