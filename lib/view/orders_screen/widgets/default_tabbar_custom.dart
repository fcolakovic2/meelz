import 'package:flutter/material.dart';
import 'package:meelz/view/orders_screen/widgets/tabbar_reusable.dart';

DefaultTabController defaultTabBarCustom(context, tabList, widgetsList, appBar,
    [widgetsBefore]) {
  return DefaultTabController(
    length: tabList.length,
    child: Scaffold(
      appBar: appBar,
      backgroundColor: Colors.grey[150],
      body: SafeArea(
        child: tabBarSlider(context, tabList, widgetsList, widgetsBefore),
      ),
    ),
  );
}

Widget tabBarSlider(context, ordersList, widgetsList, [widgetsBefore]) {
  return Container(
    child: NotificationListener<OverscrollIndicatorNotification>(
      // ignore: missing_return
      onNotification: (overscroll) {
        overscroll.disallowGlow();
      },

      child: ListView(
        children: [
          Container(
            child: widgetsBefore,
          ),
          tabBarReusable(ordersList),
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Padding(
              padding: const EdgeInsets.only(left: 0.0, right: 0.0),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.8,
                child: TabBarView(
                  physics: BouncingScrollPhysics(),
                  children: List<Widget>.generate(
                    widgetsList.length,
                    (counter) => widgetsList[counter],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
