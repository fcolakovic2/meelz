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
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: const EdgeInsets.only(left: 25.0, right: 25.0),
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
                color: Colors.amberAccent,
              ),
              insets: EdgeInsets.only(
                // left: ,
                right: MediaQuery.of(context).size.width * 0.185,
              ),
            ),
            labelPadding: EdgeInsets.symmetric(vertical: 15.0),
            // indicatorSize: TabBarIndicatorSize.label,
            tabs: [
              Container(
                padding: const EdgeInsets.only(right: 30),
                child: Text(
                  "ALL ORDERS",
                  style: itemSlider,
                ),
              ),
              Container(
                padding: const EdgeInsets.only(right: 30),
                child: Text(
                  "PENDING",
                  style: itemSlider,
                ),
              ),
              Container(
                padding: const EdgeInsets.only(right: 30),
                child: Text(
                  "SHIPPED",
                  style: itemSlider,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
