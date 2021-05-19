import 'package:flutter/material.dart';
import 'package:meelz/view/kartica/pages/kartica.dart';

int indexPage = 0;

List<String> tabList = ["ALL ORDERS", "PENDING", "SHIPPED"];

List<Widget> widgetsList = [
  OrderKartica("title", "subtitle", "cijena", ""),
  Icon(Icons.directions_transit, size: 350),
  Icon(Icons.directions_car, size: 350),
];
