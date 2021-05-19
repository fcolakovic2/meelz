import 'package:flutter/material.dart';
import 'package:meelz/view/orders_screen/widgets/tabbar_reusable.dart';

DefaultTabController defaultTabBarCustom(
    tabList, widgetsList, appBar, widgetsBefore) {
  return DefaultTabController(
    length: tabList.length,
    child: Scaffold(
      appBar: appBar,
      backgroundColor: Colors.grey[150],
      body: SafeArea(
        child: tabBarSlider(tabList, widgetsList, widgetsBefore),
      ),
    ),
  );
}

Column tabBarSlider(ordersList, widgetsList, widgetsBefore) {
  return Column(
    children: [
      Container(
        child: widgetsBefore,
      ),
      tabBarReusable(ordersList),
      Expanded(
        child: TabBarView(
          children: List<Widget>.generate(
            widgetsList.length,
            (counter) => widgetsList[counter],
          ),
        ),
      ),
    ],
  );
}
