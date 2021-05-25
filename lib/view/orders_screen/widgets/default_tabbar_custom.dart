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
  var _scrollController = ScrollController();
  _scrollController.addListener(() {
    if (_scrollController.position.pixels ==
        _scrollController.position.maxScrollExtent) {
      // Perform your task
      print("kraj");
    }
  });

  return Container(
    child: NotificationListener<OverscrollIndicatorNotification>(
      // ignore: missing_return
      onNotification: (overscroll) {
        overscroll.disallowGlow();
      },

      child: ListView(
        controller: _scrollController,
        children: [
          Container(
            child: widgetsBefore,
          ),
          tabBarReusable(ordersList),
          Container(
            height: widgetsBefore == null
                ? MediaQuery.of(context).size.height -
                    AppBar().preferredSize.height -
                    MediaQuery.of(context).padding.top -
                    81
                : MediaQuery.of(context).size.height * 0.8,
            child: TabBarView(
              physics: BouncingScrollPhysics(),
              children: List<Widget>.generate(
                widgetsList.length,
                (counter) => widgetsList[counter],
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
