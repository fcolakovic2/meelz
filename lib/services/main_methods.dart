import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:meelz/interface/main_methods_interface.dart';

class MainMethodsServices extends MainMethodsInterface {
  @override
  Future<void> preferredOrientations() =>
      SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  @override
  Size buildSize() => Size(393, 767);
  @override
  MediaQuery scaleText(BuildContext context, Widget widget) {
    return MediaQuery(
      //Setting font does not change with system font size
      data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
      child: widget,
    );
  }
}
