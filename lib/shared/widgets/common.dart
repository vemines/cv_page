import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:gap/gap.dart';

import '../constants/value.dart';

var brightness = SchedulerBinding.instance.platformDispatcher.platformBrightness;
bool isDarkMode = brightness == Brightness.dark;

Widget gapF(double factor) => Gap(Dimensions.normal * factor); // gap with factor
Widget gapN() => const Gap(Dimensions.normal); // gap normal
Widget gapS() => const Gap(Dimensions.small); // gap small
Widget gapSM() => const Gap(Dimensions.small / 2); // gap small
Widget gapL() => const Gap(Dimensions.large); // gap large

Widget divider([double height = 4]) {
  return Divider(
    height: height,
    color: isDarkMode ? white.withOpacity(0.4) : black.withOpacity(0.4),
  );
}

Widget widgetByThemeMode({required Widget light, required Widget dark}) {
  return isDarkMode ? dark : light;
}

Widget centerIndicator() => const Center(child: CircularProgressIndicator());
