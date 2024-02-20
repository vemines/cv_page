import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import 'package:get/get.dart';

import 'cv/cv_export.dart';
import 'shared/shared.dart';

Future<void> main() async {
  // load .env
  await dotenv.load(fileName: "${prefixAsset}dotenv");
  // init languages
  await AppLanguage.initLanguages();
  // init hive
  Get.put(BreakPointController());
  runApp(const MyApp());
}

class MyApp extends GetView<BreakPointController> {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    controller.checkBreakPoint(context.width);
    return GetMaterialApp(
      title: "VeMines Cv",
      debugShowCheckedModeBanner: false,
      // theme
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      themeMode: ThemeMode.dark,
      // routes
      initialRoute: "/",
      getPages: [
        GetPage(
          name: "/",
          page: () => const CvView(),
          binding: CvBinding(),
        ),
      ],
      unknownRoute: GetPage(
        name: "/404",
        page: () => const Page404View(),
      ),
      // language
      translations: AppLanguage(),
      locale: const Locale('en', 'US'),
      fallbackLocale: const Locale('en', 'US'),
      defaultTransition: Transition.fade,
    );
  }
}
