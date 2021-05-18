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
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
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
                          child: Image.network(
                              'https://github.com/flutter/plugins/raw/master/packages/video_player/video_player/doc/demo_ipod.gif?raw=true'),
                        )
                      ]),
                      Column(children: <Widget>[
                        Text(
                          widget.title,
                          style: TextStyle(
                            fontSize: 16,
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff373737),
                          ),
                        ),
                        SizedBox(height: SizeConfig.safeBlockVertical * 2),
                        Text(
                          widget.subtitle,
                          style: TextStyle(
                            fontSize: 14,
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff373737).withOpacity(0.6),
                          ),
                        ),
                      ]),
                    ],
                  ),
                  SizedBox(
                    height: SizeConfig.safeBlockVertical * 2,
                  ),
                  widget.imaSlike
                      ? Row(
                          mainAxisAlignment: !widget.imaSlike
                              ? MainAxisAlignment.end
                              : MainAxisAlignment.start,
                          children: <Widget>[
                            Column(children: <Widget>[
                              Text(
                                widget.cijena,
                              ),
                            ]),
                          ],
                        )
                      : Row(
                          mainAxisAlignment: !widget.imaSlike
                              ? MainAxisAlignment.end
                              : MainAxisAlignment.start,
                          children: <Widget>[
                            Column(children: <Widget>[
                              Text(
                                widget.cijena,
                                style: TextStyle(
                                  fontSize: 16,
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0x373737),
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Column(
                        children: [
                          Text(
                            widget.title,
                            style: TextStyle(
                              fontSize: 16,
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff373737),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          SizedBox(width: SizeConfig.screenWidth * 0.65)
                        ],
                      ),
                      Column(
                        children: <Widget>[Icon(Icons.more_vert)],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: SizeConfig.safeBlockVertical * 2,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        widget.subtitle,
                        style: TextStyle(
                          fontSize: 14,
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff373737).withOpacity(0.6),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    //ovdje dodaj sad i pending i delivery date, a dole obrisi pending i delivery dodaj sliku samo. zato se ne vide pending i delivery jer otvori uvijek ovo ako je slika true tj ako postoji
                    height: SizeConfig.safeBlockVertical * 2,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Chip(
                            backgroundColor: Colors.yellow,
                            label: Text(
                              "Pending",
                              style: TextStyle(
                                fontSize: 12,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff68572D),
                              ),
                            ),
                          )
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          SizedBox(width: SizeConfig.safeBlockHorizontal * 3)
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          Chip(
                            backgroundColor: Color(0xffF6F6F6),
                            label: Text(
                              "Feb 13 delivery",
                              style: TextStyle(
                                fontSize: 12,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff373737),
                              ),
                            ),
                          )
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          SizedBox(width: SizeConfig.safeBlockHorizontal * 3)
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            widget.cijena,
                            style: TextStyle(
                              fontSize: 16,
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w500,
                              color: Color(0x373737),
                            ),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
      ),
    );
  }
}
