abstract class OrderDetailsInterface {
  String deliveryDateFormat(deliveryDate);

  String deliveryDateFormatHours(deliveryDate);

  bool checkIfItsNotPaymentReceipt(leftElement);

  bool checkIfItsStatus(leftElement);

  bool checkIfItsPrice(leftElement);

  bool checkIfItsPending(status);

  bool deliveryOrReceipt(leftElement);

  bool checkIfItsDelivery(leftElement);
}
