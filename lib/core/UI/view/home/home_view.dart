import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meals_app_responsive/core/UI/controller/home_controller.dart';
import '../../../../helpers/responsive/screen_type_layout.dart';
import '../../../../helpers/responsive/orientation_layout.dart';
import 'home_view_desktop.dart';
import 'home_view_mob.dart';
import 'home_view_tab.dart';

class HomeView extends StatelessWidget {
  static const routeNamed = '/';

  final _homeController = Get.put(
    HomeController(),
  );
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: OrientationLayout(
        portrait: HomeViewMobPort(),
        landscape: HomeViewMobLand(),
      ),
      tablet:  OrientationLayout(
        portrait:  HomeViewTabPort(),
        landscape: HomeViewTabLand(),
      ),
      
     
      desktop: HomeViewDesktop(),
    );
  }
}
