import 'package:intl/intl.dart';
import 'package:meelz/interface/order_details_interface.dart';

class OrderDetailsService implements OrderDetailsInterface {
  @override
  String deliveryDateFormat(deliveryDate) {
    return DateFormat('MMM ${deliveryDate.day}, yyyy').format(deliveryDate);
  }

  @override
  String deliveryDateFormatHours(deliveryDate) {
    return DateFormat('kk:mm').format(deliveryDate);
  }

  @override
  bool checkIfItsNotPaymentReceipt(leftElement) {
    return leftElement != "Payment receipt";
  }

  @override
  bool checkIfItsStatus(leftElement) {
    return leftElement == "Status";
  }

  @override
  bool checkIfItsPrice(leftElement) {
    return leftElement == "Total price";
  }

  @override
  bool checkIfItsPending(status) {
    return status == "Pending";
  }

  @override
  bool deliveryOrReceipt(leftElement) {
    return leftElement == "Delivery address" ||
        leftElement == "Payment receipt";
  }

  @override
  bool checkIfItsDelivery(leftElement) {
    return leftElement == "Delivery address";
  }
}
