import 'package:flutter/material.dart';
import 'package:meelz/utils/dummy_data/dummy_data.dart';
import 'package:meelz/view/order_details_screen/widgets/list_details_row.dart';

class ListDetails extends StatelessWidget {
  List<String> attributes;

  ListDetails(title, status, cijena, deliveryDateStr) {
    attributes = [
      status == "Pending" ? status = "Delivery expected" : status = "Delivered",
      title.split(" ")[1],
      "Home",
      deliveryDateStr,
      cijena,
      "Download"
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 38.0),
      child: NotificationListener<OverscrollIndicatorNotification>(
        // ignore: missing_return
        onNotification: (overscroll) {
          overscroll.disallowGlow();
        },
        child: ListView(
          children: List<Widget>.generate(
            attributes.length,
            (counter) => Padding(
              padding: const EdgeInsets.only(bottom: 18.0),
              child:
                  listDetailsRow(listDetailsLeft[counter], attributes[counter]),
            ),
          ),
        ),
      ),
    );
  }
}
