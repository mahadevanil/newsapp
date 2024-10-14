import "dart:async";
import 'package:chopper/chopper.dart';

import '../base.service.dart';

// Import your base service

// This is necessary for the generator to work.
part 'weather.service.chopper.dart';

@ChopperApi(baseUrl: "/current.json")
abstract class WeatherService extends ChopperService {
  static WeatherService create() =>
      _$WeatherService(ChopperBaseService.weatherApiClient);

  @Get()
  Future<Response<Map<String, dynamic>>?> getCurrentWeather(
    @Query('key') String apiKey,
    @Query('q') String cityName,
    @Query('aqi') String aqi,
  );
}
