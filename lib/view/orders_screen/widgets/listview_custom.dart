import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:meelz/utils/style/styles.dart';
import 'package:meelz/viewModel/order_screens_model.dart';

NotificationListener<OverscrollIndicatorNotification> listViewCustom(cardsList,
    [status]) {
  return NotificationListener<OverscrollIndicatorNotification>(
    // ignore: missing_return
    onNotification: (overscroll) {
      overscroll.disallowGlow();
    },

    child: ListView(
      children: List<Widget>.generate(
        cardsList.length,
        (counter) => cardsList[counter].status == status || status == null
            ? Padding(
                padding: const EdgeInsets.only(top: 25.0, right: 20, left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10.0, left: 5),
                      child: OrderScreensViewModel()
                              .checkIfItsTodayModel(cardsList[counter])
                          ? Text("${cardsList[counter].dateOrderStr}",
                              style: stilDatuma)
                          : Text(
                              "TODAY AT ${DateFormat('kk:mm').format(cardsList[counter].orderDate)}",
                              style: stilDatuma),
                    ),
                    counter == cardsList.length - 1
                        ? Padding(
                            padding: const EdgeInsets.only(bottom: 25),
                            child: cardsList[counter])
                        : cardsList[counter],
                  ],
                ),
              )
            : Container(),
      ),
    ),
  );
}
