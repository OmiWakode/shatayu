
import 'package:flutter/widgets.dart';
import 'package:shatayu/enums/device_screen_type.dart';

DeviceScreenType getDeviceType(MediaQueryData mediaQueryData ){
  double deviceWidth = mediaQueryData.size.width;

  if (deviceWidth > 950) {
    return DeviceScreenType.Desktop;
  }

  else if (deviceWidth > 600) {
    return DeviceScreenType.Tablet;
  }

  return DeviceScreenType.Mobile;
}




