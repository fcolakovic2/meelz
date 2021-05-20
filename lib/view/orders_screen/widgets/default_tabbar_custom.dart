import 'package:flutter/material.dart';
import 'package:meelz/view/orders_screen/widgets/tabbar_reusable.dart';

DefaultTabController defaultTabBarCustom(tabList, widgetsList, appBar,
    [widgetsBefore]) {
  return DefaultTabController(
    length: tabList.length,
    child: Scaffold(
      appBar: appBar,
      backgroundColor: Colors.grey[150],
      body: SafeArea(
        child: tabBarSlider(tabList, widgetsList),
      ),
    ),
  );
}

Column tabBarSlider(ordersList, widgetsList, [widgetsBefore]) {
  return Column(
    children: [
      Container(
        child: widgetsBefore,
      ),
      tabBarReusable(ordersList),
      Expanded(
        child: Padding(
          padding: const EdgeInsets.only(left: 0.0, right: 0.0),
          child: TabBarView(
            physics: BouncingScrollPhysics(),
            children: List<Widget>.generate(
              widgetsList.length,
              (counter) => widgetsList[counter],
            ),
          ),
        ),
      ),
    ],
  );
}
