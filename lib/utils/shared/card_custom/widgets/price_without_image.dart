import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meelz/utils/style/styles.dart';

class PriceWithoutImage extends StatelessWidget {
  const PriceWithoutImage({
    Key key,
    @required this.cijena,
  }) : super(key: key);

  final String cijena;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: ScreenUtil().setWidth(65),
      child: FittedBox(
        fit: BoxFit.fitWidth,
        child: Text(
          cijena,
          style: stilCijene,
        ),
      ),
    );
  }
}
