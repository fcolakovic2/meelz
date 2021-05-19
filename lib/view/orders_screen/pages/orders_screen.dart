import 'package:flutter/material.dart';
import 'package:meelz/utils/dummy_data/dummy_data.dart';
import 'package:meelz/utils/shared/strings.dart';
import 'package:meelz/view/orders_screen/widgets/appbar.dart';
import 'package:meelz/view/orders_screen/widgets/default_tabbar_custom.dart';

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
    return defaultTabBarCustom(
        tabList, widgetsList, appBarCustom(appBarTitle), null);
  }
}
