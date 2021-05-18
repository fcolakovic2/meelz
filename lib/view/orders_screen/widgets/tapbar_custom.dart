import 'package:flutter/material.dart';
import 'package:meelz/utils/dummy_data/dummy_data.dart';

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
                width: 100,
                child: Text(
                  "ALL ORDERS",
                  style: TextStyle(
                    color: indexPage == 0
                        ? Color(0xFF373737)
                        : Color(0xFF373737).withOpacity(0.7),
                  ),
                ),
              ),
              Container(
                width: 100,
                child: Text(
                  "PENDING",
                  style: TextStyle(
                      color: indexPage == 1
                          ? Color(0xFF373737)
                          : Color(0xFF373737).withOpacity(0.7)),
                ),
              ),
              Container(
                width: 100,
                child: Text(
                  "SHIPPED",
                  style: TextStyle(
                      color: indexPage == 2
                          ? Color(0xFF373737)
                          : Color(0xFF373737).withOpacity(0.7)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
