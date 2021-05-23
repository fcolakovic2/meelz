import 'package:flutter/material.dart';

TextStyle appBarText = TextStyle(
  fontWeight: FontWeight.w500,
  color: Color(0xff373737),
  fontSize: 26,
  letterSpacing: -0.5,
);

TextStyle itemSlider = TextStyle(
  fontWeight: FontWeight.w500,
  fontFamily: "Inter",
  fontSize: 14,
  letterSpacing: 0.5,
);

BoxDecoration appBarBorder() {
  return BoxDecoration(
    border: Border(
      bottom: BorderSide(
        color: Color(0xffEEEEEE),
        width: 1,
      ),
    ),
  );
}

final TextStyle stilPending = TextStyle(
  fontFamily: "Inter",
  fontSize: 12,
  fontStyle: FontStyle.normal,
  fontWeight: FontWeight.w500,
  color: Color(0xff68572D),
);

final TextStyle stilShipped = TextStyle(
  fontFamily: "Inter",
  fontSize: 12,
  fontStyle: FontStyle.normal,
  fontWeight: FontWeight.w500,
  color: Color(0xffffffff),
);

final TextStyle stilDelivery = TextStyle(
  fontFamily: "Inter",
  fontSize: 12,
  fontStyle: FontStyle.normal,
  fontWeight: FontWeight.w500,
  color: Color(0xff373737),
);

final TextStyle stilNaslova = TextStyle(
  fontFamily: "Inter",
  fontSize: 16,
  fontStyle: FontStyle.normal,
  fontWeight: FontWeight.w500,
  color: Color(0xff373737),
);

final TextStyle stilPodnaslova = TextStyle(
  fontFamily: "Inter",
  fontSize: 14,
  fontStyle: FontStyle.normal,
  fontWeight: FontWeight.w500,
  color: Color(0xff373737).withOpacity(0.6),
);

final TextStyle stilCijene = TextStyle(
  fontSize: 16,
  fontFamily: "Inter",
  fontStyle: FontStyle.normal,
  fontWeight: FontWeight.w500,
  color: Color(0xff373737),
);

final TextStyle stilDatuma = TextStyle(
  fontSize: 12,
  fontFamily: "Inter",
  fontStyle: FontStyle.normal,
  fontWeight: FontWeight.w500,
  color: Color(0xff373737).withOpacity(0.6),
);

final TextStyle stilNaslovaAppBar = TextStyle(
  fontSize: 26,
  fontFamily: "Averta CY",
  fontStyle: FontStyle.normal,
  fontWeight: FontWeight.w700,
  color: Color(0xff373737),
);

final TextStyle cardLeftTitleDetails = TextStyle(
  fontSize: 14,
  fontFamily: "Averta CY",
  fontStyle: FontStyle.normal,
  fontWeight: FontWeight.w700,
  color: Color(0xff373737),
);

final TextStyle cardRightTitleDetails = TextStyle(
  fontSize: 14,
  fontFamily: "Averta",
  fontStyle: FontStyle.normal,
  fontWeight: FontWeight.w400,
  color: Color(0xff373737),
);

final TextStyle styleListItems = TextStyle(
  fontSize: 16,
  fontFamily: "Averta",
  fontStyle: FontStyle.normal,
  fontWeight: FontWeight.w400,
  color: Color(0xff373737),
);

final TextStyle styleListItemsPom = TextStyle(
  fontSize: 13,
  fontFamily: "Averta",
  fontStyle: FontStyle.normal,
  color: Color(0xff373737),
);

final TextStyle stylePriceBold = TextStyle(
  fontSize: 14,
  fontFamily: "Averta",
  fontWeight: FontWeight.bold,
  fontStyle: FontStyle.normal,
  color: Color(0xff373737),
);

final TextStyle styleListItemsBold = TextStyle(
  fontSize: 16,
  fontFamily: "Averta",
  fontStyle: FontStyle.normal,
  fontWeight: FontWeight.w700,
  color: Color(0xff373737),
);

BoxDecoration listBorder() {
  return BoxDecoration(
    border: Border(
      bottom: BorderSide(
        width: 1.0,
        color: Color(0xFFEEEEEE),
      ),
    ),
  );
}

BoxDecoration listBorderUp() {
  return BoxDecoration(
    border: Border(
      top: BorderSide(
        width: 1.0,
        color: Color(0xFFEEEEEE),
      ),
    ),
  );
}

BoxDecoration buildBoxDecoration() {
  return BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.only(
      topLeft: Radius.circular(16),
      topRight: Radius.circular(16),
      bottomLeft: Radius.circular(16),
      bottomRight: Radius.circular(16),
    ),
    boxShadow: [
      BoxShadow(
        color: Colors.grey.withOpacity(0.05),
        spreadRadius: 0,
        blurRadius: 5,
        offset: Offset(3.0, 3), // changes position of shadow
      ),
    ],
  );
}

final TextStyle rateThisOrder = TextStyle(
  fontSize: 16,
  fontFamily: "Inter",
  fontStyle: FontStyle.normal,
  fontWeight: FontWeight.w500,
  color: Color(0xff68572D),
);

final TextStyle trackOrderLight = TextStyle(
  fontSize: 13,
  fontFamily: "Averta",
  fontStyle: FontStyle.normal,
  color: Color(0xFF373737).withOpacity(0.6),
);

final TextStyle trackOrderDark = TextStyle(
  fontSize: 14,
  fontFamily: "Averta",
  fontStyle: FontStyle.normal,
  color: Color(0xFF373737),
);

final TextStyle trackOrderGreen = TextStyle(
  fontSize: 14,
  fontFamily: "Averta",
  fontStyle: FontStyle.normal,
  color: Color(0xFF1CBD8D),
);
final TextStyle stilNaslovaPaymenta = TextStyle(
  fontSize: 14,
  fontFamily: "Averta CY",
  fontStyle: FontStyle.normal,
  fontWeight: FontWeight.bold,
  color: Color(0xff373737),
);

final TextStyle stilVisa = TextStyle(
  fontSize: 13,
  fontFamily: "Averta CY",
  fontStyle: FontStyle.normal,
  fontWeight: FontWeight.normal,
  color: Color(0xff373737),
);

final TextStyle orderDelVAT = TextStyle(
  fontSize: 14,
  fontFamily: "Averta CY",
  fontStyle: FontStyle.normal,
  fontWeight: FontWeight.w400,
  color: Color(0xff373737).withOpacity(0.7),
);

final TextStyle total = TextStyle(
  fontSize: 14,
  fontFamily: "Averta CY",
  fontStyle: FontStyle.normal,
  fontWeight: FontWeight.bold,
  color: Color(0xff373737),
);

final TextStyle totalnoopacity = TextStyle(
  fontSize: 14,
  fontFamily: "Averta CY",
  fontStyle: FontStyle.normal,
  fontWeight: FontWeight.w400,
  color: Color(0xff373737),
);
