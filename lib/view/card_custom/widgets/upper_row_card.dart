import 'package:flutter/material.dart';
import 'package:meelz/utils/style/styles.dart';

class UpperRowCard extends StatelessWidget {
  const UpperRowCard({
    Key key,
    @required this.naslov,
    @required this.srcslike,
    @required this.nazivRestorana,
  }) : super(key: key);

  final String naslov;
  final String srcslike;
  final String nazivRestorana;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: listBorder(),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(15, 25, 15, 20),
        child: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                naslov,
                style: cardLeftTitleDetails,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: Image.asset(srcslike),
                  ),
                  Text(
                    nazivRestorana,
                    style: cardRightTitleDetails,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
