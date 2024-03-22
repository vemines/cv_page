// ignore_for_file: constant_identifier_names

import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;
import 'package:get/get.dart';

import '../utils/util.dart';

class AppLanguage extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {};

  static Future<void> initLanguages() async {
    final Map<String, Map<String, String>> keys = {};
    List<String> languageCodes = ["en", "vi"];
    for (var e in languageCodes) {
      keys.addAll(await loadLanguage(e));
    }
    Get.clearTranslations();
    Get.addTranslations(keys);
  }

  static Future<Map<String, Map<String, String>>> loadLanguage(
    String languageCode,
  ) async {
    final res = await rootBundle.loadString('lang/$languageCode.json');
    Map<String, dynamic> json = jsonDecode(res);
    final i18 = I18nModel.fromJson(json);
    return {i18.code!: i18.texts!};
  }

  // for language dialog
  Map<String, String> get supportLanguages => {
        "en_US": "English (US)",
        "vi_VN": "Tiếng Việt",
      };
}

class I18nModel {
  String? name;
  String? code;
  Map<String, String>? texts;

  I18nModel({this.name, this.code, this.texts});

  I18nModel.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    code = json['code'];
    if (json['texts'] != null) {
      texts = Map<String, String>.from(flatten(json['texts']));
    }
  }
}

// for using language without key
// usage: LocaleKeys.hello.tr
class LocaleKeys {
  LocaleKeys._();
  static const hello = 'hello';
  static const language = "language";
  static const tools = "tool";
  static const category = "category";
  static const param = "param";
  // CV Translation
  static const dob = "dob";
  static const github = "github";
  static const my_phone = "my_phone";
  static const my_email = "my_email";
  static const phone = "phone";
  static const address = "address";
  static const about = "about";
  static const vision = "vision";
  static const skills = "skills";
  static const education = "education";
  static const projects = "projects";
  static const soft_skills = "soft_skills";
  static const contact = "contact";
  static const my_name = "my_name";
  static const my_address = "my_address";
  static const my_about = "my_about";
  static const my_frontend = "my_frontend";
  static const my_backend = "my_backend";
  static const my_database = "my_database";
  static const my_school = "my_school";
  static const my_school_info = "my_school_info";
  static const my_project_1 = "my_project_1";
  static const my_project_1_url = "my_project_1_url";
  static const my_project_1_info = "my_project_1_info";
  static const my_project_2 = "my_project_2";
  static const my_project_2_url = "my_project_2_url";
  static const my_project_2_info = "my_project_2_info";
  static const my_vision = "my_vision";
}
