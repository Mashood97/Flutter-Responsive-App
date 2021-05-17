import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meals_app_responsive/core/UI/controller/home_controller.dart';
import 'package:meals_app_responsive/helpers/constant/constant.dart';
import 'package:meals_app_responsive/widgets/cat_grid_item.dart';
import 'package:meals_app_responsive/widgets/custom_text.dart';
import 'package:meals_app_responsive/widgets/grid_view_custom.dart';
import 'package:meals_app_responsive/widgets/nav_bar.dart';

class HomeViewMobPort extends StatelessWidget {
  final HomeController _homeController = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: true,
        top: true,
        left: true,
        right: true,
        child: Padding(
          padding: kPadding,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              NavBar(),
              Padding(
                padding: kPadding,
                child: CustomText(
                  title: 'Select any category',
                  style: Theme.of(context).textTheme.headline5.copyWith(
                        color: Colors.black,
                        fontSize: 20,
                      ),
                ),
              ),
              Expanded(
                child: CustomGridView(
                  childAspectRatio: 3 / 2,
                  crossAxisCount: 2,
                  itemBuilder: (ctx, index) => CategoryGridItem(
                    title: _homeController.category_list[index].title,
                    color: _homeController.category_list[index].color,
                    catId: _homeController.category_list[index].id,
                  ),
                  itemCount: _homeController.category_list.length,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class HomeViewMobLand extends StatelessWidget {
  final HomeController _homeController = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: true,
        top: true,
        left: true,
        right: true,
        child: Padding(
          padding: kPadding,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              NavBar(),
              Padding(
                padding: kPadding,
                child: CustomText(
                  title: 'Select any category',
                  style: Theme.of(context).textTheme.headline5.copyWith(
                        color: Colors.black,
                        fontSize: 24,
                      ),
                ),
              ),
              Expanded(
                child: CustomGridView(
                  childAspectRatio: 4 / 3,
                  crossAxisCount: 3,
                  itemBuilder: (ctx, index) => CategoryGridItem(
                    title: _homeController.category_list[index].title,
                    color: _homeController.category_list[index].color,
                    catId: _homeController.category_list[index].id,
                  ),
                  itemCount: _homeController.category_list.length,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
