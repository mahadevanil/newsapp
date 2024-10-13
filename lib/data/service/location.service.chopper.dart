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
  Future<Response<dynamic>> getCityName() {
    final Uri $url = Uri.parse('/todos');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<dynamic, dynamic>($request);
  }
}
