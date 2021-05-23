import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:meelz/utils/shared/animations.dart';
import 'package:meelz/view/order_details_screen/pages/order_details.dart';

String dateOrderService(orderDate) {
  return DateFormat('MMM ${orderDate.day}, yyyy – kk:mm').format(orderDate);
}

String deliveryOrderService(deliveryDate) {
  return DateFormat('MMM ${deliveryDate.day}').format(deliveryDate);
}

String calculateTotalPrice(subTitleList) {
  int cijenaInt = 0;
  for (var i = 0; i < subTitleList.length; i++) {
    cijenaInt += int.parse(subTitleList[i]['price']) *
        int.parse(subTitleList[i]['quantity']);
  }
  return "AED " + cijenaInt.toString();
}

void changePage(title, status, deliveryDate, cijena, img, context) {
  if (img == "") {
    Navigator.of(context).push(
      createRouteToDown(
        OrderDetails(title, status, deliveryDate, cijena),
      ),
    );
  }
}
