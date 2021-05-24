import 'package:flutter/material.dart';
import 'package:meelz/utils/shared/card_custom/widgets/generating_rows.dart';

List<Widget> cardWithImageElement(subTitleList) {
  return List<Widget>.generate(
    subTitleList.length,
    (counter) => counter != subTitleList.length - 1
        ? helpingMethodGeneratingRows(subTitleList[counter])
        : helpingMethodGeneratingRows(subTitleList[counter], counter),
  );
}
