import 'dart:async';

import 'package:chopper/chopper.dart';
import '../../config/config.dart';
// Import your configuration file

class ChopperBaseService {
  static late ChopperClient _locationApiClient;
  static late ChopperClient _newsApiClient;

  static Future<void> init() async {
    _locationApiClient = ChopperClient(
      baseUrl: Uri.parse(Config.locationApiBaseUrl),
      services: [],
      converter: const JsonConverter(),
      interceptors: [], // Add your interceptor
    );
    _newsApiClient = ChopperClient(
      baseUrl: Uri.parse(Config.newsBaseUrl),
      // Add interceptors if needed
      interceptors: [], // Add your interceptor
      // Add your service classes here
      services: [],
      converter:
          const JsonConverter(), // Use appropriate converter for your needs
      errorConverter:
          const JsonConverter(), // Handle error conversion if necessary
    );
  }

  static ChopperClient get locationClient {
    return _locationApiClient;
  }

  static ChopperClient get newsApiClient {
    return _newsApiClient;
  }
}
