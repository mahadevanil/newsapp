// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather.service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
final class _$WeatherService extends WeatherService {
  _$WeatherService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final Type definitionType = WeatherService;

  @override
  Future<Response<Map<String, dynamic>>> getCurrentWeather(
    String apiKey,
    String cityName,
    String aqi,
  ) {
    final Uri $url = Uri.parse('/current.json');
    final Map<String, dynamic> $params = <String, dynamic>{
      'key': apiKey,
      'q': cityName,
      'aqi': aqi,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<Map<String, dynamic>, Map<String, dynamic>>($request);
  }
}
