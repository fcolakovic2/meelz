import 'package:flutter/material.dart';
import 'package:meelz/view/kartica/widgets/cijena_slika.dart';
import 'package:meelz/view/kartica/widgets/naslov_podnaslov_slika.dart';

class KarticaSaSlikom extends StatelessWidget {
  const KarticaSaSlikom({
    Key key,
    @required this.naslov,
    @required this.subnaslov,
    @required this.srcslike,
    @required this.cijena,
    @required this.status,
  }) : super(key: key);

  final String naslov;
  final String subnaslov;
  final String srcslike;
  final String cijena;
  final String status;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(top: 15.0, left: 15.0, bottom: 1.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Column(children: <Widget>[
                Container(
                  height: 40,
                  child: Image.asset(srcslike),
                ),
              ]),
              Padding(
                padding: const EdgeInsets.only(left: 13.0),
                child: NaslovPodnaslovSaSlikom(
                    naslov: naslov, subnaslov: subnaslov),
              ),
            ],
          ),
        ),
        CijenaSlika(cijena: cijena)
      ],
    );
  }
}
