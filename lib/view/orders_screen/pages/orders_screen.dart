import 'package:flutter/material.dart';
import 'package:meelz/view/orders_screen/widgets/tapbar_custom.dart';

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
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          elevation: 0.5,
          backgroundColor: Colors.white,
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(60.0),
            child: TapBarCustom(),
          ),
          title: Text(
            'Orders',
            style: TextStyle(
                fontWeight: FontWeight.w500,
                color: Color(0xff373737),
                fontSize: 26),
          ),
        ),
        backgroundColor: Colors.grey[150],
        body: TabBarView(
          physics: NeverScrollableScrollPhysics(),
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
