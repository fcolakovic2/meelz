import 'package:flutter/material.dart';
import 'package:meelz/utils/dummy_data/dummy_data.dart';
import 'package:meelz/utils/style/styles.dart';

class ListDetails extends StatelessWidget {
  List<String> attributes;

  ListDetails(title, status, cijena, deliveryDateStr) {
    attributes.add(status);
    attributes.add(title);
    attributes.add("Home");
    attributes.add(deliveryDateStr);
    attributes.add(cijena);
    attributes.add("Download");
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 38.0),
      child: ListView(
        children: List<Widget>.generate(
          attributes.length,
          (counter) =>
              listDetailsRow(listDetailsLeft[counter], attributes[counter]),
        ),
      ),
    );
  }

  Container listDetailsRow(leftElement, rightElement) {
    return Container(
      decoration: listBorder(),
      child: Padding(
        padding: const EdgeInsets.only(bottom: 18.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              leftElement,
              style: styleListItems,
            ),
            Text(
              rightElement,
              style: styleListItems,
            ),
          ],
        ),
      ),
    );
  }
}
