import 'package:flutter/material.dart';
import 'package:meelz/view/card_custom/pages/custom_card.dart';
import 'package:meelz/view/orders_screen/widgets/listview_custom.dart';

int indexPage = 0;

List<String> tabList = ["ALL ORDERS", "PENDING", "SHIPPED"];

List<String> listDetailsLeft = [
  "Status",
  "Orders",
  "Delivery address",
  "Delivery date",
  "Total price",
  "Payment receipt"
];

List<CustomCard> cardsList = [
  CustomCard(
    "Orders #13424",
    "Meat lovers 2, Coffe 2, Drinks 3",
    "AED 150",
    "",
    "Pending",
    DateTime.now(),
    DateTime.now().add(
      const Duration(days: 1),
    ),
  ),
  CustomCard(
    "Order #32324",
    "Meat lovers 2, Coffe 2, Drinks 3",
    "AED 250",
    "",
    "Shipped",
    DateTime(2021, 1, 25, 12, 34),
    DateTime(2021, 1, 12, 12, 34),
  ),
  CustomCard(
    "Order #22525",
    "Meat lovers 2, Coffe 2, Drinks 3",
    "AED 220",
    "",
    "Shipped",
    DateTime(2021, 1, 25, 13, 35),
    DateTime(2021, 1, 12, 12, 34),
  ),
];

List<Widget> widgetsList = [
  listViewCustomAll(cardsList),
  listViewCustomPending(cardsList),
  listViewCustomShipped(cardsList),
];
