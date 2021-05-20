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
  NotificationListener<OverscrollIndicatorNotification>(
    onNotification: (overscroll) {
      overscroll.disallowGlow();
    },
    child: ListView(
      children: List<Widget>.generate(
        cardsList.length,
        (counter) => Padding(
          padding: const EdgeInsets.only(top: 25.0, right: 20, left: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 10.0),
                child: Text("TODAY AT 15:15", style: stilDatuma),
              ),
              cardsList[counter],
            ],
          ),
        ),
      ),
    ),
  ),
  NotificationListener<OverscrollIndicatorNotification>(
    onNotification: (overscroll) {
      overscroll.disallowGlow();
    },
    child: ListView(
      children: List<Widget>.generate(
        cardsList.length,
        (counter) => cardsList[counter].status == "Pending"
            ? Padding(
                padding: const EdgeInsets.only(top: 25.0, right: 20, left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10.0),
                      child: Text("TODAY AT 15:15", style: stilDatuma),
                    ),
                    cardsList[counter],
                  ],
                ),
              )
            : Container(),
      ),
    ),
  ),
  NotificationListener<OverscrollIndicatorNotification>(
    onNotification: (overscroll) {
      overscroll.disallowGlow();
    },
    child: ListView(
      children: List<Widget>.generate(
        cardsList.length,
        (counter) => cardsList[counter].status == "Shipped"
            ? Padding(
                padding: const EdgeInsets.only(top: 25.0, right: 20, left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10.0),
                      child: Text("TODAY AT 15:15", style: stilDatuma),
                    ),
                    cardsList[counter],
                  ],
                ),
              )
            : Container(),
      ),
    ),
  ),
];
