import 'package:meelz/services/order_screens_services.dart';

class OrderScreensViewModel {
  String deliveryDateFormatModel(deliveryDate) {
    return OrderScreensService().deliveryDateFormat(deliveryDate);
  }

  String deliveryDateFormatHoursModel(deliveryDate) {
    return OrderScreensService().deliveryDateFormatHours(deliveryDate);
  }

  bool checkIfItsNotPaymentReceiptModel(leftElement) {
    return OrderScreensService().checkIfItsNotPaymentReceipt(leftElement);
  }

  bool checkIfItsStatusModel(leftElement) {
    return OrderScreensService().checkIfItsStatus(leftElement);
  }

  bool checkIfItsPriceModel(leftElement) {
    return OrderScreensService().checkIfItsPrice(leftElement);
  }

  bool checkIfItsPendingModel(status) {
    return OrderScreensService().checkIfItsPending(status);
  }

  bool deliveryOrReceiptModel(leftElement) {
    return OrderScreensService().deliveryOrReceipt(leftElement);
  }

  bool checkIfItsDeliveryModel(leftElement) {
    return OrderScreensService().checkIfItsDelivery(leftElement);
  }

  bool checkIfItsTodayModel(cardListElement) {
    return OrderScreensService().checkIfItsToday(cardListElement);
  }
}
