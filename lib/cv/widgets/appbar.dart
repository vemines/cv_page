import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../shared/shared.dart';
import 'common.dart';
import 'dialog.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
    required this.title,
    this.centerTitle = false,
  });

  final String title;
  final bool centerTitle;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: centerTitle,
      automaticallyImplyLeading: false,
      forceMaterialTransparency: true,
      backgroundColor: Colors.black12,
      title: Text(
        title,
        style: context.textTheme.headlineMedium,
      ),
      actions: [
        TextButton(
          onPressed: () {
            Get.dialog(
              const LanguageDialog(),
            );
          },
          child: Text(
            LocaleKeys.language.tr,
            style: context.textTheme.titleMedium?.copyWith(
              color: context.theme.colorScheme.onSurface,
            ),
          ),
        ),
        sizeBoxW(1),
        IconButton(
          onPressed: () => Get.changeThemeMode(Get.isDarkMode ? ThemeMode.light : ThemeMode.dark),
          icon: Icon(
            Get.isDarkMode ? Icons.sunny : Icons.dark_mode,
            color: context.theme.colorScheme.onSurface,
          ),
        ),
        sizeBoxW(1),
      ],
    );
  }
}
