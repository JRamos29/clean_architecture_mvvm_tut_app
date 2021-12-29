import 'package:flutter_config/flutter_config.dart';

class Constants {
  static final String baseUrl = FlutterConfig.get('API_BASE_URL');
  static final String token = FlutterConfig.get('API_TOKEN');
}
