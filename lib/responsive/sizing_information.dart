import 'package:flutter/material.dart';
import 'package:shatayu/enums/device_screen_type.dart';

class SizingInformation{
  final DeviceScreenType deviceScreenType;
  final Size screenSize;
  final Size localWidgetSize;
  SizingInformation({required this.deviceScreenType, required this.screenSize, required this.localWidgetSize});
  @override
   String toString() {
    // TODO: implement toString
    return 'DeviceType: $deviceScreenType, ScreenSize:$screenSize, LocalWidgetSize:$localWidgetSize';
  }

}