import 'package:flutter/material.dart';

class OrdersScreen extends StatefulWidget {
  @override
  _OrdersScreenState createState() => _OrdersScreenState();
}

class _OrdersScreenState extends State<OrdersScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          elevation: 0.0,
          backgroundColor: Colors.white,
          bottom: TabBar(
            indicatorColor: Colors.amberAccent,
            indicatorSize: TabBarIndicatorSize.label,
            tabs: [
              Text(
                "ALL ORDERS",
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              Text(
                "PENDING",
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              Text(
                "SHIPPED",
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ],
          ),
          title: Text(
            'Orders',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ),
        backgroundColor: Colors.white,
        body: TabBarView(
          children: [
            Icon(Icons.flight, size: 350),
            Icon(Icons.directions_transit, size: 350),
            Icon(Icons.directions_car, size: 350),
          ],
        ),
      ),
    );
  }
}
