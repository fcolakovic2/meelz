import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SlikaPaymentKartice extends StatelessWidget {
  const SlikaPaymentKartice({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15.0, top: 10.0, right: 15.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Row(
            children: [
              SvgPicture.asset("assets/images/Vectorpayment.svg"),
            ],
          ),
        ],
      ),
    );
  }
}
