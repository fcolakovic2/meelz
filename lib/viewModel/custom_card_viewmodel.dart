import 'package:meelz/services/custom_card_services.dart';

class CustomCardViewModel {
  String dateOrderServiceModel(orderDate) {
    return CustomCardService().dateOrderService(orderDate);
  }

  String deliveryOrderServiceModel(deliveryDate) {
    return CustomCardService().deliveryOrderService(deliveryDate);
  }

  String calculateTotalPriceModel(subTitleList) {
    return CustomCardService().calculateTotalPrice(subTitleList);
  }

  void changePageModel(title, status, deliveryDate, cijena, img, context) {
    return CustomCardService()
        .changePage(title, status, deliveryDate, cijena, img, context);
  }
}
