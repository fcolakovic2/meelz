import 'package:flutter/material.dart';
import 'package:meelz/utils/dummy_data/dummy_data.dart';

class TapBarCustom extends StatefulWidget {
  @override
  _TapBarCustomState createState() => _TapBarCustomState();
}

class _TapBarCustomState extends State<TapBarCustom> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: const EdgeInsets.only(left: 15.0, right: 15.0),
        child: Container(
          width: MediaQuery.of(context).size.width / 1.2,
          child: TabBar(
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
                right: MediaQuery.of(context).size.width * 0.13,
              ),
            ),
            labelPadding: EdgeInsets.symmetric(vertical: 15.0),
            indicatorSize: TabBarIndicatorSize.label,
            tabs: [
              Text(
                "ALL ORDERS",
                style: TextStyle(
                  color: indexPage == 0 ? Colors.black : Colors.grey,
                ),
              ),
              Text(
                "PENDING   ",
                style: TextStyle(
                  color: indexPage == 1 ? Colors.black : Colors.grey,
                ),
              ),
              Text(
                "SHIPPED   ",
                style: TextStyle(
                  color: indexPage == 2 ? Colors.black : Colors.grey,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
