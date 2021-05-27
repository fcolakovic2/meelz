import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meelz/providers/page_index.dart';
import 'package:meelz/view/orders_screen/widgets/tabbar_reusable.dart';
import 'package:provider/provider.dart';

DefaultTabController defaultTabBarCustom(context, tabList, widgetsList, appBar,
    [widgetsBefore]) {
  return DefaultTabController(
    length: tabList.length,
    child: Scaffold(
      appBar: appBar,
      backgroundColor: Colors.grey[150],
      body: SafeArea(
        child: TabBarSlider(context, tabList, widgetsList, widgetsBefore),
      ),
    ),
  );
}

// ignore: must_be_immutable
class TabBarSlider extends StatefulWidget {
  var contexta, ordersList, widgetsList, widgetsBefore;
  TabBarSlider(this.contexta, this.ordersList, this.widgetsList,
      [this.widgetsBefore]);
  @override
  _TabBarSliderState createState() => _TabBarSliderState();
}

class _TabBarSliderState extends State<TabBarSlider> {
  var _scrollController = ScrollController();
  // int index = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var controllers = context.watch<PageIndexProvider>();
    if (widget.widgetsBefore != null) controllers.changeIndex(0);
    print(controllers.pageIndex);

    return Container(
      child: NotificationListener<OverscrollIndicatorNotification>(
        // ignore: missing_return
        onNotification: (overscroll) {
          overscroll.disallowGlow();
        },
        child: ListView(
          physics: widget.widgetsBefore == null
              ? NeverScrollableScrollPhysics()
              : AlwaysScrollableScrollPhysics(),
          shrinkWrap: true,
          controller: _scrollController,
          children: [
            Container(
              child: widget.widgetsBefore,
            ),
            tabBarReusable(widget.ordersList),
            widget.widgetsBefore == null
                ? Container(
                    height: widget.widgetsBefore == null
                        ? MediaQuery.of(context).size.height -
                            AppBar().preferredSize.height -
                            MediaQuery.of(context).padding.top -
                            120.sp
                        : MediaQuery.of(context).size.height * 0.78,
                    child: TabBarView(
                      physics: BouncingScrollPhysics(),
                      children: List<Widget>.generate(
                        widget.widgetsList.length,
                        (counter) => widget.widgetsList[counter],
                      ),
                    ),
                  )
                : Column(
                    children: [
                      Container(
                        child: [
                          widget.widgetsList[0],
                          widget.widgetsList[1],
                        ][controllers.pageIndex],
                      ),
                    ],
                  ),
          ],
        ),
      ),
    );
  }
}
