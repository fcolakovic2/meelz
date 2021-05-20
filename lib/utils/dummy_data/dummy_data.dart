import 'package:flutter/material.dart';
import 'package:meelz/view/kartica/pages/kartica.dart';

int indexPage = 0;

List<String> tabList = ["ALL ORDERS", "PENDING", "SHIPPED"];

List<Widget> cardsList = [
  OrderKartica(
      "Orders #13424", "Meat lovers 2, Coffe 2, Drinks 3", "AED 150", ""),
  OrderKartica(
      "Order #32324", "Meat lovers 2, Coffe 2, Drinks 3", "AED 250", ""),
  OrderKartica(
      "Order #22525", "Meat lovers 2, Coffe 2, Drinks 3", "AED 220", ""),
];

List<Widget> widgetsList = [
  ListView(
    children: List<Widget>.generate(
      cardsList.length,
      (counter) => Padding(
        padding: const EdgeInsets.only(top: 47.0, right: 20, left: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("ss"),
            cardsList[counter],
          ],
        ),
      ),
    ),
  ),
  Icon(Icons.directions_transit, size: 350),
  Icon(Icons.directions_car, size: 350),
];
