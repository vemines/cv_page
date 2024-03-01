import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../shared/shared.dart';

SizedBox sizeBoxH(double factor) => SizedBox(height: 16 * factor);
SizedBox sizeBoxW(double factor) => SizedBox(width: 16 * factor);
Divider divider4B() =>
    Divider(height: 4, color: Get.isDarkMode ? Colors.white.withOpacity(0.4) : Colors.black.withOpacity(0.4));
Image assetImage(String url) => Image.asset("$prefixAsset$url");
