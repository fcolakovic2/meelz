import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:meelz/utils/style/styles.dart';

NotificationListener<OverscrollIndicatorNotification> listViewCustomShipped(
    cardsList) {
  return NotificationListener<OverscrollIndicatorNotification>(
    // ignore: missing_return
    onNotification: (overscroll) {
      overscroll.disallowGlow();
    },

    child: ListView(
      children: List<Widget>.generate(
        cardsList.length,
        (counter) => cardsList[counter].status == "Shipped"
            ? Padding(
                padding: const EdgeInsets.only(top: 25.0, right: 20, left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10.0),
                      child: cardsList[counter].datum.year !=
                                  DateTime.now().year ||
                              cardsList[counter].datum.month !=
                                  DateTime.now().month
                          ? Text("${cardsList[counter].datumStr}",
                              style: stilDatuma)
                          : Text(
                              "TODAY AT ${DateFormat('kk:mm').format(cardsList[counter].datum)}",
                              style: stilDatuma),
                    ),
                    cardsList[counter],
                  ],
                ),
              )
            : Container(),
      ),
    ),
  );
}

NotificationListener<OverscrollIndicatorNotification> listViewCustomPending(
    cardsList) {
  return NotificationListener<OverscrollIndicatorNotification>(
    // ignore: missing_return
    onNotification: (overscroll) {
      overscroll.disallowGlow();
    },
    child: ListView(
      children: List<Widget>.generate(
        cardsList.length,
        (counter) => cardsList[counter].status == "Pending"
            ? Padding(
                padding: const EdgeInsets.only(top: 25.0, right: 20, left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10.0),
                      child: cardsList[counter].datum.year !=
                                  DateTime.now().year ||
                              cardsList[counter].datum.month !=
                                  DateTime.now().month
                          ? Text("${cardsList[counter].datumStr}",
                              style: stilDatuma)
                          : Text(
                              "TODAY AT ${DateFormat('kk:mm').format(cardsList[counter].datum)}",
                              style: stilDatuma),
                    ),
                    cardsList[counter],
                  ],
                ),
              )
            : Container(),
      ),
    ),
  );
}

NotificationListener<OverscrollIndicatorNotification> listViewCustomAll(
    cardsList) {
  return NotificationListener<OverscrollIndicatorNotification>(
    // ignore: missing_return
    onNotification: (overscroll) {
      overscroll.disallowGlow();
    },
    child: ListView(
      children: List<Widget>.generate(
        cardsList.length,
        (counter) => Padding(
          padding: const EdgeInsets.only(top: 25.0, right: 20, left: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 10.0),
                child: cardsList[counter].datum.year != DateTime.now().year ||
                        cardsList[counter].datum.month != DateTime.now().month
                    ? Text("${cardsList[counter].datumStr}", style: stilDatuma)
                    : Text(
                        "TODAY AT ${DateFormat('kk:mm').format(cardsList[counter].datum)}",
                        style: stilDatuma),
              ),
              cardsList[counter],
            ],
          ),
        ),
      ),
    ),
  );
}
