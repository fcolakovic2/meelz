import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meelz/view/order_details_screen/widgets/widget_list_details.dart';
import 'package:meelz/view/orders_screen/widgets/tabbar_reusable.dart';
import 'package:meelz/utils/dummy_data/dummy_data.dart';

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

class tabBarSlider extends StatefulWidget {
  var contexta, ordersList, widgetsList, widgetsBefore;
  tabBarSlider(this.contexta, this.ordersList, this.widgetsList,
      [this.widgetsBefore]);
  @override
  _tabBarSliderState createState() => _tabBarSliderState();
}

class _tabBarSliderState extends State<tabBarSlider> {
  var _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // _scrollController.addListener(() {
    //   setState(() {
    //     kraj = false;
    //   });
    //   if (_scrollController.position.pixels ==
    //       _scrollController.position.maxScrollExtent) {
    //     // Perform your task
    //     kraj = true;
    //     setState(() {});
    //   }
    // });

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
            Container(
              height: widget.widgetsBefore == null
                  ? MediaQuery.of(context).size.height -
                      AppBar().preferredSize.height -
                      MediaQuery.of(context).padding.top -
                      120.sp
                  : MediaQuery.of(context).size.height * 0.78,
              child: TabBarView(
                physics: BouncingScrollPhysics(),
                children: widget.widgetsBefore == null
                    ? List<Widget>.generate(
                        widget.widgetsList.length,
                        (counter) => widget.widgetsList[counter],
                      )
                    : [
                        ListViewFirst(cardsList[0]),
                        widget.widgetsList[1],
                      ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Widget taabBarSlider(context, ordersList, widgetsList, [widgetsBefore]) {
//   var _scrollController = ScrollController();
//   var kraj = false;

//   _scrollController.addListener(() {
//     if (_scrollController.position.pixels ==
//         _scrollController.position.maxScrollExtent) {
//       // Perform your task
//       kraj = true;
//       // print("kraj");
//     } else {
//       kraj = false;
//     }
//   });
//   return Container(
//     child: NotificationListener<OverscrollIndicatorNotification>(
//       // ignore: missing_return
//       onNotification: (overscroll) {
//         overscroll.disallowGlow();
//       },

//       child: ListView(
//         shrinkWrap: true,
//         controller: _scrollController,
//         children: [
//           Container(
//             child: widgetsBefore,
//           ),
//           tabBarReusable(ordersList),
//           Container(
//             height: widgetsBefore == null
//                 ? MediaQuery.of(context).size.height -
//                     AppBar().preferredSize.height -
//                     MediaQuery.of(context).padding.top -
//                     81
//                 : MediaQuery.of(context).size.height * 0.9,
//             child: TabBarView(
//               physics: BouncingScrollPhysics(),
//               children: List<Widget>.generate(
//                 widgetsList.length,
//                 (counter) => widgetsList[counter],
//               ),
//             ),
//           ),
//         ],
//       ),
//     ),
//   );
// }
