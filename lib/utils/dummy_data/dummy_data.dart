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
    productsDetails,
    "AED 250",
    "",
    "Shipped",
    DateTime(2021, 1, 25, 12, 34),
    DateTime(2021, 1, 12, 12, 34),
  ),
  CustomCard(
    "Order #22525",
    productsDetails,
    "AED 220",
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

List<Widget> widgetsListDetails(title) {
  CustomCard pom;
  for (var i = 0; i < cardsList.length; i++) {
    if (cardsList[i].title == title) {
      pom = cardsList[i];
      break;
    }
  }
  return [
    NotificationListener<OverscrollIndicatorNotification>(
      // ignore: missing_return
      onNotification: (overscroll) {
        overscroll.disallowGlow();
      },
      child: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 30, 20, 45),
            child: CustomCard(
                pom.title,
                pom.subTitleList,
                pom.cijena,
                "assets/images/Vector.png",
                pom.status,
                pom.orderDate,
                pom.deliveryDate),
          ),
        ],
      ),
    ),
    Icon(Icons.car_rental),
  ];
}

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
