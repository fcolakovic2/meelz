import 'package:flutter/material.dart';
import 'package:meelz/utils/dummy_data/dummy_data.dart';
import 'package:meelz/view/order_details_screen/widgets/app_bar_custom.dart';
import 'package:meelz/view/order_details_screen/widgets/customButton.dart';
import 'package:meelz/view/order_details_screen/widgets/list_details.dart';
import 'package:meelz/view/order_details_screen/widgets/widget_list_details.dart';
import 'package:meelz/view/orders_screen/widgets/default_tabbar_custom.dart';
import 'package:meelz/viewModel/order_screens_model.dart';

// ignore: must_be_immutable
class OrderDetails extends StatefulWidget {
  String title, status, cijena, deliveryDateStr, deliveryDateStrTitle;
  DateTime deliveryDate;

  OrderDetails(this.title, this.status, this.deliveryDate, this.cijena) {
    deliveryDateStr =
        OrderScreensViewModel().deliveryDateFormatModel(deliveryDate);
    deliveryDateStrTitle =
        OrderScreensViewModel().deliveryDateFormatHoursModel(deliveryDate);
    deliveryDateStrTitle = deliveryDateStr + " at " + deliveryDateStrTitle;
  }

  @override
  _OrderDetailsState createState() => _OrderDetailsState();
}

class _OrderDetailsState extends State<OrderDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: defaultTabBarCustom(
        context,
        tabListDetails,
        widgetsListDetails(widget.title),
        appBarCustom2(widget.deliveryDateStrTitle),
        detailsWidget(context),
      ),
    );
  }

  Column detailsWidget(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Colors.white,
          child: ListDetails(widget.title, widget.status, widget.cijena,
              widget.deliveryDateStr),
        ),
        customButton(context),
      ],
    );
  }
}
