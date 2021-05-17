import 'package:flutter/material.dart';

import '../enums/device_screen_type.dart';

DeviceScreenType getDeviceScreenType(MediaQueryData mediaQueryData) {
  double deviceWidth = mediaQueryData.size.width;
  if (deviceWidth >= 1200) {
    return DeviceScreenType.Desktop;
  }
  if (deviceWidth > 600 && deviceWidth < 1200) {
    return DeviceScreenType.Tablet;
  }
  return DeviceScreenType.Mobile;
}
