import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meelz/utils/style/styles.dart';

// ignore: must_be_immutable
class PendingChip extends StatelessWidget {
  var status;

  PendingChip(this.status);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: decorationChip(status),
      height: ScreenUtil().setWidth(22),
      width: ScreenUtil().setWidth(67),
      child: FittedBox(
        fit: BoxFit.fitWidth,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10.0),
              child: Text(
                status,
                style: status == "Pending" ? stilPending : stilShipped,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
