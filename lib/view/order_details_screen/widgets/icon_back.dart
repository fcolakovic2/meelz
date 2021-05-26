import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class IconBack extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 39.sp,
      height: 39.sp,
      child: RawMaterialButton(
        elevation: 0,
        fillColor: Color(0xffF9F9F9),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        child: Icon(
          Icons.arrow_back_ios_rounded,
          color: Color(0xff373737),
          size: 18.sp,
        ),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}
