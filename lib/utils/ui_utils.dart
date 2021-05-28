import 'package:flutter/widgets.dart';
import '../models/device_screen_type.dart';

DeviceScreenType getDeviceType(MediaQueryData mediaQuery) {
  final double deviceWidth = mediaQuery.size.shortestSide;

  if (deviceWidth > 960) return DeviceScreenType.Desktop;

  if (deviceWidth > 490) return DeviceScreenType.Tablet;

  if (deviceWidth < 185) return DeviceScreenType.Watch;

  return DeviceScreenType.Mobile;
}
