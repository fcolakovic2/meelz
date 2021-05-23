import 'package:meelz/services/custom_card_services.dart';

String dateOrderServiceModel(orderDate) {
  return dateOrderService(orderDate);
}

String deliveryOrderServiceModel(deliveryDate) {
  return deliveryOrderService(deliveryDate);
}

String calculateTotalPriceModel(subTitleList) {
  return calculateTotalPrice(subTitleList);
}

void changePageModel(title, status, deliveryDate, cijena, img, context) {
  return changePage(title, status, deliveryDate, cijena, img, context);
}
