import 'package:flutter/material.dart';
import 'package:meals_app_responsive/helpers/constant/constant.dart';
import 'package:meals_app_responsive/helpers/responsive/screen_type_layout.dart';

import 'custom_text.dart';

class NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _mediaQuery = MediaQuery.of(context);
    return !ScreenTypeLayout.isDesktop(context)
        ? Padding(
            padding: kPadding,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // CustomText(
                //   title: 'Select any category',
                //   style: Theme.of(context).textTheme.headline5.copyWith(
                //         color: Colors.black,
                //       ),
                // ),

                Text(
                  'Happy Meals',
                  style: Theme.of(context).textTheme.headline4.copyWith(
                        color: Colors.black,
                        fontSize: ScreenTypeLayout.isMobile(context)
                            ? 24
                            : ScreenTypeLayout.isTablet(context)
                                ? 28
                                : 18,
                      ),
                ),
                IconButton(icon: Icon(Icons.menu), onPressed: () {}),
              ],
            ),
          )
        : Container(
            width: _mediaQuery.size.width * 0.05,
            height: _mediaQuery.size.height,
            color: Theme.of(context).primaryColor,
          );
  }
}
