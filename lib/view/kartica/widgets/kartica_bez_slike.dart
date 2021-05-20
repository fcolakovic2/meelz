import 'package:flutter/material.dart';
import 'package:meelz/view/kartica/widgets/cijena_bez_slike.dart';
import 'package:meelz/view/kartica/widgets/delivery_date_chip.dart';
import 'package:meelz/view/kartica/widgets/naslov_tackice_bez_slike.dart';
import 'package:meelz/view/kartica/widgets/pending_chip.dart';
import 'package:meelz/view/kartica/widgets/podnaslov_bez_slike.dart';

class KarticaBezSlike extends StatelessWidget {
  const KarticaBezSlike({
    Key key,
    @required this.naslov,
    @required this.podnaslov,
    @required this.cijena,
    @required this.status,
    @required this.dateStr,
    @required this.date,
  }) : super(key: key);

  final String naslov;
  final String podnaslov;
  final String cijena;
  final String status;
  final String dateStr;
  final DateTime date;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 8.0),
          child: NaslovTackice(naslov: naslov),
        ),
        PodnaslovBezSlike(podnaslov: podnaslov),
        Padding(
          padding: const EdgeInsets.fromLTRB(18.0, 0, 20.0, 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(right: 5.0),
                child: Column(
                  children: <Widget>[
                    PendingChip(status),
                  ],
                ),
              ),
              Column(
                children: <Widget>[
                  DeliveryDateChip(date, dateStr),
                ],
              ),
              Spacer(),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  CijenaBezSlike(cijena: cijena),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
