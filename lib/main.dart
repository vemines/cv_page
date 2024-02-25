import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'cv/cv_export.dart';
import 'shared/shared.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
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
      title: "VeMines CV",
      debugShowCheckedModeBanner: false,
      // theme
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      themeMode: ThemeMode.dark,
      // routes
      initialRoute: "/cv",
      getPages: [
        GetPage(
          name: "/cv",
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
