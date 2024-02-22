import 'package:get/get.dart';

import '../consts/enum_const.dart';
import '../helpers/dotenv.dart';

class BreakPointController extends GetxController {
  final kDesktop = DotEnvHelper.parseNum(key: 'DESKTOP', def: 1500);
  final kTablet = DotEnvHelper.parseNum(key: 'TABLET', def: 1000);
  final kMobile = DotEnvHelper.parseNum(key: 'MOBILE', def: 600);

  Rx<BreakPointScreen> screenType = BreakPointScreen.small.obs;

  /// process logic of break point
  void checkBreakPoint(double width) {
    if (width > kDesktop) {
      screenType.value = BreakPointScreen.extra;
    } else if (width > kTablet) {
      screenType.value = BreakPointScreen.large;
    } else if (width > kMobile) {
      screenType.value = BreakPointScreen.medium;
    } else {
      screenType.value = BreakPointScreen.small;
    }
  }

  RxBool get isDesktop {
    return (screenType.value == BreakPointScreen.extra || screenType.value == BreakPointScreen.large).obs;
  }

  /// return padding by [BreakPointScreen]
  double get padding {
    switch (screenType.value) {
      case BreakPointScreen.extra:
        return 20;
      case BreakPointScreen.large:
        return 16;
      case BreakPointScreen.medium:
        return 12;
      default:
        return 10;
    }
  }
}
