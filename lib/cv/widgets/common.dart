import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../shared/shared.dart';

var bp = Get.find<BreakPointController>();
SizedBox sizeBoxH(double factor) => SizedBox(height: bp.padding * factor);
SizedBox sizeBoxW(double factor) => SizedBox(width: bp.padding * factor);
Divider divider4B() =>
    Divider(height: 4, color: Get.isDarkMode ? Colors.white.withOpacity(0.4) : Colors.black.withOpacity(0.4));
Image assetImage(String url) => Image.asset("$prefixAsset$url");
