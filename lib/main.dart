import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:meelz/view/order_details_screen/pages/order_details.dart';
import 'package:meelz/providers/page_index.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider.value(value: PageIndexProvider()),
      ],
      child: MyApp(),
    ),
  );
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle.dark.copyWith(
      statusBarColor: Colors.white,
      statusBarIconBrightness: Brightness.dark,
      statusBarBrightness: Brightness.dark,
    ), /* set Status bar icon color in iOS. */
  );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        fontFamily: 'Inter',
        primarySwatch: Colors.blue,
      ),
      home: OrderDetails(),
    );
  }
}
