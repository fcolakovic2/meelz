import 'package:flutter/material.dart';
import 'package:meelz/utils/style/styles.dart';
import 'package:meelz/view/kartica/pages/kartica.dart';

int indexPage = 0;

List<String> tabList = ["ALL ORDERS", "PENDING", "SHIPPED"];

List<OrderKartica> cardsList = [
  OrderKartica("Orders #13424", "Meat lovers 2, Coffe 2, Drinks 3", "AED 150",
      "", "Pending"),
  OrderKartica("Order #32324", "Meat lovers 2, Coffe 2, Drinks 3", "AED 250",
      "", "Shipped"),
  OrderKartica("Order #22525", "Meat lovers 2, Coffe 2, Drinks 3", "AED 220",
      "", "Shipped"),
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
            Padding(
              padding: const EdgeInsets.only(bottom: 18.0),
              child: Text("Today at 15:15", style: stilDatuma),
            ),
            cardsList[counter],
          ],
        ),
      ),
    ),
  ),
  ListView(
    children: List<Widget>.generate(
      cardsList.length,
      (counter) => cardsList[counter].status == "Pending"
          ? Padding(
              padding: const EdgeInsets.only(top: 47.0, right: 20, left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("ss"),
                  cardsList[counter],
                ],
              ),
            )
          : Container(),
    ),
  ),
  ListView(
    children: List<Widget>.generate(
      cardsList.length,
      (counter) => cardsList[counter].status == "Shipped"
          ? Padding(
              padding: const EdgeInsets.only(top: 47.0, right: 20, left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("ss"),
                  cardsList[counter],
                ],
              ),
            )
          : Container(),
    ),
  ),
];
