import 'package:flutter/material.dart';
import 'package:meelz/providers/page_index.dart';
import 'package:meelz/utils/dummy_data/dummy_data.dart';
import 'package:meelz/utils/style/styles.dart';
import 'package:meelz/view/orders_screen/widgets/m2dindicator.dart';
import 'package:meelz/view/orders_screen/widgets/tab_element.dart';
import 'package:provider/provider.dart';

// ignore: must_be_immutable
class TabBarCustom extends StatefulWidget {
  var lista;
  TabBarCustom(this.lista);
  @override
  _TabBarCustomState createState() => _TabBarCustomState();
}

class _TabBarCustomState extends State<TabBarCustom> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var controllers = context.watch<PageIndexProvider>();

    return Container(
      decoration: appBarBorder(),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Container(
          margin: const EdgeInsets.only(left: 20.0, right: .0),
          child: Container(
            width: MediaQuery.of(context).size.width / 1.2,
            child: TabBar(
              labelColor: Color(0xFF373737),
              unselectedLabelColor: Color(0xFF373737).withOpacity(0.7),
              isScrollable: true,
              onTap: (value) {
                controllers.changeIndex(value);
              },
              indicator: MD2Indicator(
                indicatorSize: MD2IndicatorSize.tiny,
                indicatorHeight: 3.0,
                indicatorColor: Color(0xFFFFDF36),
              ),
              labelPadding: EdgeInsets.symmetric(vertical: 22.0),
              tabs: List<Widget>.generate(
                ordersList.length,
                (counter) => tabElement(widget.lista[counter]),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
