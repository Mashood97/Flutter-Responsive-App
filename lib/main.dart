import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meals_app_responsive/core/UI/view/home/home_view.dart';
import 'package:meals_app_responsive/helpers/constant/constant.dart';
import 'package:device_preview/device_preview.dart';

import 'helpers/theme/light_theme.dart';

void main() {
  // runApp(
  //   DevicePreview(
  //     enabled: !kReleaseMode,
  //     builder: (context) => MyApp(), // Wrap your app
  //   ),
  // );
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      // builder: DevicePreview.appBuilder,
      theme: Themes.getTheme(context),
      // initialRoute: HomeView.routeNamed,
      home: HomeView(),
    );
  }
}
