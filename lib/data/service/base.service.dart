import 'dart:async';

import 'package:chopper/chopper.dart';
import '../../config/config.dart';
// Import your configuration file

class ChopperBaseService {
  static late ChopperClient _locationApiClient;
  static late ChopperClient _newsApiClient;
  static late ChopperClient _weatherApiClient;
  static String token = '';

  static Future<void> init() async {
    _locationApiClient = ChopperClient(
      baseUrl: Uri.parse(Config.locationApiBaseUrl),
      converter: const JsonConverter(),
      interceptors: [
        const HeadersInterceptor({
          "Content-Type": "application/json",
        })
      ],
    );
    _newsApiClient = ChopperClient(
      baseUrl: Uri.parse(Config.newsBaseUrl),
      interceptors: [
        const HeadersInterceptor({
          "Content-Type": "application/json",
        })
      ],
      services: [],
      converter: const JsonConverter(),
      errorConverter: const JsonConverter(),
    );
    _weatherApiClient = ChopperClient(
      baseUrl: Uri.parse(Config.weatherBaseUrl),
      interceptors: [
        const HeadersInterceptor({
          "Content-Type": "application/json",
        })
      ],
      converter: const JsonConverter(),
      errorConverter: const JsonConverter(),
    );
  }

  static ChopperClient get locationClient {
    return _locationApiClient;
  }

  static ChopperClient get newsApiClient {
    return _newsApiClient;
  }

  static ChopperClient get weatherApiClient {
    return _weatherApiClient;
  }
}
