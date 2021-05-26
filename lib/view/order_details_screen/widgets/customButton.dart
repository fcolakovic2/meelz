import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meelz/utils/style/styles.dart';

Widget customButton(BuildContext context) {
  return Container(
    height: ScreenUtil().setHeight(48),
    color: Colors.white,
    child: Padding(
      padding: const EdgeInsets.only(left: 20.0, right: 20.0),
      child: Container(
        child: TextButton(
          style: ButtonStyle(
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16.0),
              ),
            ),
            backgroundColor: MaterialStateProperty.all(
              Color(0xffFFDF36),
            ),
          ),
          onPressed: () {},
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(right: 6.0),
                child: Icon(
                  Icons.thumb_up_outlined,
                  color: Color(0xff68572D),
                ),
              ),
              Text(
                'Rate this order',
                style: rateThisOrder,
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
