import 'package:flutter/material.dart';

class IconBack extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 39,
      height: 39,
      child: RawMaterialButton(
        elevation: 0,
        fillColor: Color(0xffF9F9F9),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        child: Icon(
          Icons.arrow_back_ios_rounded,
          color: Colors.black,
          size: 15.0,
        ),
        onPressed: () {
          // Navigator.pushReplacement(
          //   context,
          //   MaterialPageRoute(
          //     builder: (_) => SignUpPage(),
          //   ),
          //);
        },
      ),
    );
  }
}
