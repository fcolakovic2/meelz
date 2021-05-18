import 'package:flutter/material.dart';
import 'package:meelz/utils/dummy_data/dummy_data.dart';
import 'package:meelz/view/orders_screen/widgets/appbar.dart';

class OrdersScreen extends StatefulWidget {
  @override
  _OrdersScreenState createState() => _OrdersScreenState();
}

class _OrdersScreenState extends State<OrdersScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: ordersList.length,
      child: Scaffold(
        appBar: appBarCustom("Orders"),
        backgroundColor: Colors.grey[150],
        body: TabBarView(
          children: [
            Icon(Icons.android, size: 350),
            Icon(Icons.directions_transit, size: 350),
            Icon(Icons.directions_car, size: 350),
          ],
        ),
      ),
    );
  }
}
