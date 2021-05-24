import 'package:meelz/services/order_details_services.dart';

class OrderDetailsViewModel {
  String deliveryDateFormatModel(deliveryDate) {
    return OrderDetailsService().deliveryDateFormat(deliveryDate);
  }

  String deliveryDateFormatHoursModel(deliveryDate) {
    return OrderDetailsService().deliveryDateFormatHours(deliveryDate);
  }

  bool checkIfItsNotPaymentReceiptModel(leftElement) {
    return OrderDetailsService().checkIfItsNotPaymentReceipt(leftElement);
  }

  bool checkIfItsStatusModel(leftElement) {
    return OrderDetailsService().checkIfItsStatus(leftElement);
  }

  bool checkIfItsPriceModel(leftElement) {
    return OrderDetailsService().checkIfItsPrice(leftElement);
  }

  bool checkIfItsPendingModel(status) {
    return OrderDetailsService().checkIfItsPending(status);
  }

  bool deliveryOrReceiptModel(leftElement) {
    return OrderDetailsService().deliveryOrReceipt(leftElement);
  }

  bool checkIfItsDeliveryModel(leftElement) {
    return OrderDetailsService().checkIfItsDelivery(leftElement);
  }
}
