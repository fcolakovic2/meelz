import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:meelz/utils/style/styles.dart';
import 'package:meelz/viewModel/generate_random_string.dart';

class BottomRowCard extends StatelessWidget {
  const BottomRowCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: listBorderUp(),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(15, 20, 15, 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  width: 86,
                  child: FittedBox(
                    fit: BoxFit.fitWidth,
                    child: Text(
                      "Track number: ",
                      style: trackOrderLight,
                    ),
                  ),
                ),
                Container(
                  width: 74,
                  child: FittedBox(
                    fit: BoxFit.fitWidth,
                    child: Text(
                      GenerateStringViewModel().generateRandomStringModel(9),
                      style: trackOrderDark,
                    ),
                  ),
                )
              ],
            ),
            Material(
              color: Colors.transparent,
              child: InkWell(
                onTap: () => print("tapped"),
                splashColor: Colors.yellow[100],
                child: Row(
                  children: [
                    Container(
                      width: 73,
                      height: 40,
                      child: FittedBox(
                        fit: BoxFit.fitWidth,
                        child: Text(
                          "Track order",
                          style: trackOrderGreen,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 7.0),
                      child: SvgPicture.asset("assets/images/Vector325.svg"),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
