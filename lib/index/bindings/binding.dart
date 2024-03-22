import 'package:get/get.dart';

import '../controllers/controller.dart';

class MainBinding implements Bindings {
  @override
  void dependencies() {
    Get.put<MainController>(MainController());
  }
}
