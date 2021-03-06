import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:meelz/utils/style/styles.dart';
import 'package:meelz/viewModel/generate_random_string.dart';

class BottomRowCard extends StatelessWidget {
  const BottomRowCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: listBorderUp(),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(15, 10, 10, 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  width: ScreenUtil().setWidth(86),
                  child: FittedBox(
                    fit: BoxFit.fitWidth,
                    child: Text(
                      "Track number: ",
                      style: trackOrderLight,
                    ),
                  ),
                ),
                Container(
                  width: ScreenUtil().setWidth(74),
                  child: FittedBox(
                    fit: BoxFit.fitWidth,
                    child: Text(
                      GenerateStringViewModel().generateRandomStringModel(9),
                      style: trackOrderDark,
                    ),
                  ),
                )
              ],
            ),
            Material(
              color: Colors.transparent,
              child: InkWell(
                customBorder: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                onTap: () => print("tapped"),
                splashColor: Colors.orange[100],
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 5.0, right: .0),
                      child: Container(
                        width: ScreenUtil().setWidth(73),
                        height: ScreenUtil().setHeight(40),
                        child: FittedBox(
                          fit: BoxFit.fitWidth,
                          child: Text(
                            "Track order",
                            style: trackOrderGreen,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 5.0, right: 5.0),
                      child: SvgPicture.asset("assets/images/Vector325.svg"),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
