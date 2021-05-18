import 'package:flutter/material.dart';
import 'package:meelz/utils/dummy_data/dummy_data.dart';
import 'package:meelz/utils/style/styles.dart';

class TapBarCustom extends StatefulWidget {
  @override
  _TapBarCustomState createState() => _TapBarCustomState();
}

class _TapBarCustomState extends State<TapBarCustom> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: appBarBorder(),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Container(
          margin: const EdgeInsets.only(left: 26.0, right: .0),
          child: Container(
            width: MediaQuery.of(context).size.width / 1.2,
            child: TabBar(
              labelColor: Color(0xFF373737),
              unselectedLabelColor: Color(0xFF373737).withOpacity(0.7),
              isScrollable: true,
              onTap: (value) {
                setState(() {
                  indexPage = value;
                });
              },
              indicator: UnderlineTabIndicator(
                borderSide: BorderSide(
                  width: 2.0,
                  color: Color(0xffFFDF36),
                ),
                insets: EdgeInsets.only(
                  right: indexPage == 0
                      ? MediaQuery.of(context).size.width * 0.23
                      : MediaQuery.of(context).size.width * 0.185,
                ),
              ),
              labelPadding: EdgeInsets.symmetric(vertical: 22.0),

              // indicatorSize: TabBarIndicatorSize.label,
              tabs: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    padding: const EdgeInsets.only(right: 30),
                    // width: 100,
                    child: Text(
                      "ALL ORDERS",
                      style: itemSlider,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    padding: const EdgeInsets.only(right: 30),
                    width: 100,
                    child: Text(
                      "PENDING",
                      style: itemSlider,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    padding: const EdgeInsets.only(right: 30),
                    width: 100,
                    child: Text(
                      "SHIPPED",
                      style: itemSlider,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
