// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location.service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
final class _$LocationService extends LocationService {
  _$LocationService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final Type definitionType = LocationService;

  @override
  Future<Response<dynamic>> getCityName(
    double latitude,
    double longitude,
    String language,
    String locationKey,
  ) {
    final Uri $url = Uri.parse('/data/reverse-geocode');
    final Map<String, dynamic> $params = <String, dynamic>{
      'latitude': latitude,
      'longitude': longitude,
      'localityLanguage': language,
      'key': locationKey,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<dynamic, dynamic>($request);
  }
}
