import 'package:flutter/material.dart';
import 'package:meelz/view/card_custom/widgets/card_with_image.dart';
import 'package:meelz/view/card_custom/widgets/card_without_image.dart';
import 'package:meelz/viewModel/custom_card_viewmodel.dart';

// ignore: must_be_immutable
class CustomCard extends StatefulWidget {
  String title, cijena = "", image, status, dateOrderStr, deliveryDateStr;
  var subTitleList;
  DateTime orderDate, deliveryDate;

  CustomCard(this.title, this.subTitleList, this.image, this.status,
      this.orderDate, this.deliveryDate) {
    dateOrderStr = CustomCardViewModel().dateOrderServiceModel(orderDate);
    deliveryDateStr =
        CustomCardViewModel().deliveryOrderServiceModel(deliveryDate);
    cijena = CustomCardViewModel().calculateTotalPriceModel(subTitleList);
  }

  @override
  _CustomCardState createState() => _CustomCardState();
}

class _CustomCardState extends State<CustomCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => CustomCardViewModel().changePageModel(
          widget.title,
          widget.status,
          widget.deliveryDate,
          widget.cijena,
          widget.image,
          context),
      child: Center(
        child: Card(
          elevation: 0.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
            side: BorderSide(
              width: widget.image == "" ? 1 : 0,
              color: Color(0xffEEEEEE),
            ),
          ),
          child: widget.image != ""
              ? CardWithImage(
                  widget.title,
                  widget.subTitleList,
                  widget.image,
                  widget.cijena,
                )
              : CardWithoutImage(
                  widget.title,
                  widget.subTitleList,
                  widget.cijena,
                  widget.status,
                  widget.deliveryDateStr,
                  widget.deliveryDate,
                ),
        ),
      ),
    );
  }
}
