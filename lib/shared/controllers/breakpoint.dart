import 'package:get/get.dart';

import '../consts/enum_const.dart';

class BreakPointController extends GetxController {
  final breakpoint = 1000;

  Rx<BreakPointScreen> screenType = BreakPointScreen.small.obs;

  /// process logic of break point
  void checkBreakPoint(double width) {
    if (width > breakpoint) {
      screenType.value = BreakPointScreen.large;
    } else {
      screenType.value = BreakPointScreen.small;
    }
  }

  bool isDesktop(width) {
    return width > breakpoint;
  }

  /// return padding by [BreakPointScreen]
  double get padding {
    switch (screenType.value) {
      case BreakPointScreen.large:
        return 16;
      default:
        return 10;
    }
  }
}
