import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meelz/utils/style/styles.dart';
import 'package:meelz/view/orders_screen/pages/orders_screen.dart';
import 'package:meelz/viewModel/get_providers_instances.dart';
import 'package:meelz/viewModel/main_methods_viewmodel.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers:
          GetProvidersInstancesViewModel().getProvidersInstancesViewModel(),
      child: MyApp(),
    ),
  );
  MainMethodsViewModel().preferredOrientationsViewModel();
  setSystemUIOverlayStyle();
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: MainMethodsViewModel().buildSizeViewModel(),
      builder: () => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: themeDataStyle(),
        builder: (context, widget) {
          return MainMethodsViewModel().scaleTextViewModel(context, widget);
        },
        home: OrdersScreen(),
      ),
    );
  }
}
