import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'index/bindings/binding.dart';
import 'index/views/view.dart';
import 'shared/languages/language.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // init languages
  await AppLanguage.initLanguages();
  // init hive
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "CV",
      debugShowCheckedModeBanner: false,
      // theme
      theme: ThemeData.light().copyWith(primaryColor: Colors.blueAccent),
      darkTheme: ThemeData.dark(),
      themeMode: ThemeMode.dark,
      // routes
      initialRoute: "/",
      getPages: [
        GetPage(
          name: "/",
          page: () => const MainView(),
          binding: MainBinding(),
        ),
      ],
      // language
      translations: AppLanguage(),
      locale: const Locale('en', 'US'),
      fallbackLocale: const Locale('en', 'US'),
      defaultTransition: Transition.fade,
    );
  }
}
