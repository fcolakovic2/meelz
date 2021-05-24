abstract class CustomCardInterface {
  String dateOrderService(orderDate);
  String deliveryOrderService(deliveryDate);
  String calculateTotalPrice(subTitleList);
  void changePage(title, status, deliveryDate, cijena, img, context);
}
