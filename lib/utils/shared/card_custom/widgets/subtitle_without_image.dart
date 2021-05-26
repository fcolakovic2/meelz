import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meelz/utils/style/styles.dart';

class SubtitleWithoutImage extends StatelessWidget {
  const SubtitleWithoutImage({
    Key key,
    @required this.podnaslov,
  }) : super(key: key);

  final String podnaslov;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 20.0, bottom: 10.0),
          child: Container(
            width: ScreenUtil().setWidth(211),
            child: Text(
              podnaslov,
              softWrap: false,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: stilPodnaslova,
            ),
          ),
        ),
      ],
    );
  }
}
