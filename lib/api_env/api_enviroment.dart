import 'package:flutter/foundation.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class ApiEnviroment {

  static String get fileName {
    if(kReleaseMode) {
      return '.env.production';
    }
    return '.env.development';
  }

  static String get apiKey {
    return dotenv.env['API_KEY'] ?? "API_KEY not specified";
  }

  static String get apiBaseUrl {
    return dotenv.env['API_BASE_URL'] ?? "API_BASE_URL not specified";
  }

}