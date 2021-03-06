import 'package:flutter/material.dart';
import 'package:meelz/utils/dummy_data/dummy_data.dart';
import 'package:meelz/view/order_details_screen/widgets/list_details_row.dart';
import 'package:meelz/viewModel/order_screens_model.dart';

// ignore: must_be_immutable
class ListDetails extends StatelessWidget {
  List<String> attributes;

  ListDetails(title, status, cijena, deliveryDateStr) {
    attributes = [
      OrderScreensViewModel().checkIfItsPendingModel(status)
          ? status = "Delivery expected"
          : status = "Delivered",
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
      child: Column(
        children: List<Widget>.generate(
          attributes.length,
          (counter) => Padding(
            padding: counter == 1 || counter == 4
                ? const EdgeInsets.only(bottom: 5.0)
                : const EdgeInsets.only(bottom: 18.0),
            child:
                listDetailsRow(listDetailsLeft[counter], attributes[counter]),
          ),
        ),
      ),
    );
  }
}
