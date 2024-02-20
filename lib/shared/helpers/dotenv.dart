import 'package:flutter_dotenv/flutter_dotenv.dart';

class DotEnvHelper {
  /// parse number from env file with custom default value
  static num parseNum({required String key, num? def}) {
    final init = def ?? 0;
    return int.tryParse(dotenv.env[key].toString()) ?? init;
  }

  static String parseString({required String key, String? def}) {
    final init = def ?? "";
    return dotenv.env[key]?.toString() ?? init;
  }
}
