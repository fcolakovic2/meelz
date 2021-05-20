import 'package:flutter/material.dart';
import 'package:meelz/view/kartica/pages/kartica.dart';
import 'package:meelz/view/orders_screen/widgets/listview_custom.dart';

int indexPage = 0;

List<String> tabList = ["ALL ORDERS", "PENDING", "SHIPPED"];

List<OrderKartica> cardsList = [
  OrderKartica("Orders #13424", "Meat lovers 2, Coffe 2, Drinks 3", "AED 150",
      "", "Pending", DateTime.now()),
  OrderKartica("Order #32324", "Meat lovers 2, Coffe 2, Drinks 3", "AED 250",
      "", "Shipped", DateTime(2021, 1, 25, 12, 34)),
  OrderKartica("Order #22525", "Meat lovers 2, Coffe 2, Drinks 3", "AED 220",
      "", "Shipped", DateTime(2021, 1, 25, 13, 35)),
];

List<Widget> widgetsList = [
  listViewCustomAll(cardsList),
  listViewCustomPending(cardsList),
  listViewCustomShipped(cardsList),
];
