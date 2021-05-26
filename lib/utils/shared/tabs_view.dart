import 'package:flutter/material.dart';
import 'package:meelz/utils/shared/size_config.dart';

// ignore: must_be_immutable
class TabsView extends StatelessWidget {
  TabsView(
      {Key key,
      @required this.tabIndex,
      @required this.firstTab,
      @required this.secondTab})
      : super(key: key);

  var tabIndex;
  var firstTab;
  var secondTab;

  @override
  Widget build(BuildContext context) {
    print("$tabIndex indexx");

    return Stack(
      children: <Widget>[
        AnimatedContainer(
          child: firstTab,
          // width: SizeConfig.screenWidth,
          // padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
          transform: Matrix4.translationValues(tabIndex == 0 ? 0 : -100, 0, 0),
          duration: Duration(milliseconds: 300),
          curve: Curves.easeIn,
        ),
        AnimatedContainer(
          child: secondTab,
          // width: SizeConfig.screenWidth,
          // padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
          transform: Matrix4.translationValues(
              tabIndex == 1 ? 0 : SizeConfig.screenWidth, 0, 0),
          duration: Duration(milliseconds: 300),
          curve: Curves.easeIn,
        ),
      ],
    );
  }
}
