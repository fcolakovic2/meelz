import 'package:flutter/material.dart';
import 'package:meelz/view/card_custom/pages/custom_card.dart';
import 'package:meelz/view/orders_screen/widgets/listview_custom.dart';

int indexPage = 0;

List<String> tabList = ["ALL ORDERS", "PENDING", "SHIPPED"];

List<String> tabListDetails = ["ORDERS", "PAYMENT"];

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
    "Order #13424",
    productsDetails,
    "",
    "Pending",
    DateTime.now(),
    DateTime.now().add(
      const Duration(days: 1),
    ),
  ),
  CustomCard(
    "Order #32324",
    productsDetails,
    "",
    "Shipped",
    DateTime(2021, 1, 25, 12, 34),
    DateTime(2021, 1, 12, 12, 34),
  ),
  CustomCard(
    "Order #22525",
    productsDetails,
    "",
    "Shipped",
    DateTime(2021, 1, 25, 13, 35),
    DateTime(2021, 1, 12, 12, 34),
  ),
];

List<Widget> widgetsList = [
  listViewCustom(cardsList),
  listViewCustom(cardsList, "Pending"),
  listViewCustom(cardsList, "Shipped"),
];

var productsDetails = [
  {
    'title': 'Meat Lovers',
    'description': 'BlenderMix system for ultra-fine blen sadasd',
    'quantity': '2',
    'price': '50',
    'img': 'assets/images/Rectangle711.png'
  },
  {
    'title': 'Coffe',
    'description': 'BlenderMix system for ultra-fine blen sadasd',
    'quantity': '2',
    'price': '50',
    'img': 'assets/images/Rectangle711.png'
  },
  {
    'title': 'Drinks',
    'description': 'BlenderMix system for ultra-fine blen sadasd',
    'quantity': '3',
    'price': '50',
    'img': 'assets/images/Rectangle711.png'
  },
];
