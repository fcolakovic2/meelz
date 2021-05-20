import 'package:flutter/material.dart';
import 'package:meelz/view/order_details_screen/widgets/app_bar_custom.dart';
import 'package:meelz/view/order_details_screen/widgets/list_details.dart';

class OrderDetails extends StatefulWidget {
  @override
  _OrderDetailsState createState() => _OrderDetailsState();
}

class _OrderDetailsState extends State<OrderDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarCustom2("text"),
      body: ListDetails(),
    );
  }
}
