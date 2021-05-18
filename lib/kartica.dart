import 'package:flutter/material.dart';
import 'package:meelz/SizeConfig.dart';

class OrderKartica extends StatefulWidget {
  String title, subtitle, cijena, image;
  bool imaSlike;

  OrderKartica(
      this.title, this.subtitle, this.cijena, this.image, this.imaSlike);
  @override
  _OrderKarticaState createState() => _OrderKarticaState();
}

class _OrderKarticaState extends State<OrderKartica> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Center(
      child: Card(
        shape: !widget.imaSlike
            ? RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              )
            : RoundedRectangleBorder(),
        child: widget.imaSlike
            ? Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Column(children: <Widget>[
                        Container(
                          height: SizeConfig.safeBlockVertical * 15,
                          width: SizeConfig.safeBlockHorizontal * 15,
                          child: Image.asset('assets/images/Rectangle711.png'),
                        ),
                      ]),
                      Column(children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Text(
                            widget.title,
                            style: TextStyle(
                              fontFamily: "Inter",
                              fontSize: 16,
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff373737),
                            ),
                          ),
                        ),
                        Text(
                          widget.subtitle,
                          style: TextStyle(
                            fontFamily: "Inter",
                            fontSize: 14,
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff373737).withOpacity(0.6),
                          ),
                        ),
                      ]),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Column(children: <Widget>[
                        Padding(
                          padding:
                              const EdgeInsets.only(left: 78.0, bottom: 20.0),
                          child: Text(
                            widget.cijena,
                          ),
                        ),
                      ]),
                    ],
                  )
                ],
              )
            : Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Column(
                          children: [
                            Text(
                              widget.title,
                              style: TextStyle(
                                fontSize: 16,
                                fontFamily: "Inter",
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff373737),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            Icon(Icons.more_vert),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 20.0, bottom: 10.0),
                        child: Text(
                          widget.subtitle,
                          style: TextStyle(
                            fontSize: 14,
                            fontFamily: "Inter",
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff373737).withOpacity(0.6),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(18.0, 10.0, 20.0, 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(right: 5.0),
                          child: Column(
                            children: <Widget>[
                              Chip(
                                shape: RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(6))),
                                backgroundColor: Color(0xffFFDF36),
                                label: Text(
                                  "Pending",
                                  style: TextStyle(
                                    fontFamily: "Inter",
                                    fontSize: 12,
                                    fontStyle: FontStyle.normal,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xff68572D),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Column(
                          children: <Widget>[
                            Chip(
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(6))),
                              backgroundColor: Color(0xffF6F6F6),
                              label: Text(
                                "Feb 13 delivery",
                                style: TextStyle(
                                  fontFamily: "Inter",
                                  fontSize: 12,
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xff373737),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Spacer(),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              widget.cijena,
                              style: TextStyle(
                                fontSize: 16,
                                fontFamily: "Inter",
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff373737),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
      ),
    );
  }
}
