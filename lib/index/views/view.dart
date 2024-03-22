import 'package:cv_page/shared/constants/value.dart';
import 'package:cv_page/shared/extensions/extensions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../shared/languages/language.dart';
import '../../shared/utils/util.dart';
import '../../shared/widgets/common.dart';
import '../controllers/controller.dart';

part 'left.dart';
part 'right.dart';

class MainView extends GetView<MainController> {
  const MainView({super.key});

  @override
  Widget build(BuildContext context) {
    bool bp = context.width > 1000;
    final ColorScheme colorScheme = context.theme.colorScheme;
    final TextTheme textTheme = context.textTheme;
    return Scaffold(
      appBar: AppBar(
        centerTitle: bp,
        automaticallyImplyLeading: false,
        forceMaterialTransparency: true,
        backgroundColor: Colors.black12,
        title: Text(
          "VeMines CV",
          style: textTheme.headlineMedium,
        ),
        actions: [
          TextButton(
            onPressed: () => Get.dialog(const LanguageDialog()),
            child: Text(
              LocaleKeys.language.tr,
              style: textTheme.titleMedium?.copyWith(
                color: colorScheme.onSurface,
              ),
            ),
          ),
          gapN(),
          IconButton(
            onPressed: () => Get.changeThemeMode(Get.isDarkMode ? ThemeMode.light : ThemeMode.dark),
            icon: widgetByThemeMode(
              light: const Icon(Icons.sunny),
              dark: const Icon(Icons.dark_mode),
            ),
            color: colorScheme.onSurface,
          ),
          gapN(),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.fromLTRB(
            Dimensions.normal,
            0,
            Dimensions.normal,
            Dimensions.normal,
          ),
          child: Material(
            type: MaterialType.card,
            surfaceTintColor: colorScheme.surfaceTint,
            borderRadius: BorderRadius.circular(RadiusBorder.normal),
            elevation: 8,
            child: bp
                ? Padding(
                    padding: const EdgeInsets.only(top: Dimensions.normal),
                    child: IntrinsicHeight(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Expanded(flex: 3, child: _LeftSection()),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(
                              Dimensions.normal,
                              0,
                              Dimensions.normal,
                              Dimensions.normal,
                            ),
                            child: VerticalDivider(
                              width: 2,
                              color: Get.isDarkMode ? white.withOpacity(0.4) : black.withOpacity(0.4),
                            ),
                          ),
                          const Expanded(flex: 7, child: _RightSection()),
                        ],
                      ),
                    ),
                  )
                : Padding(
                    padding: const EdgeInsets.symmetric(horizontal: Dimensions.normal),
                    child: Column(
                      children: [
                        const _LeftSection(),
                        gapN(),
                        const _RightSection(),
                        gapN(),
                      ],
                    ),
                  ),
          ),
        ),
      ),
    );
  }
}

class LanguageDialog extends StatelessWidget {
  const LanguageDialog({super.key});

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = context.textTheme;
    return AlertDialog(
      title: const Text('Choose Your Language'),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          divider(),
          ...AppLanguage().supportLanguages.entries.map(
                (e) => Container(
                  constraints: const BoxConstraints(
                    minWidth: 300,
                    maxWidth: 500,
                  ),
                  child: ListTile(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                        RadiusBorder.normal,
                      ),
                    ),
                    title: Text(
                      e.value,
                      style: textTheme.bodyLarge,
                    ),
                    onTap: () async {
                      await Get.updateLocale(parseLocale(e.key));
                      Get.back();
                    },
                  ),
                ),
              )
        ],
      ),
    );
  }
}
