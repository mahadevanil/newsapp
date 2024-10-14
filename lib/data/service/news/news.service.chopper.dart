// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news.service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
final class _$NewsService extends NewsService {
  _$NewsService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final Type definitionType = NewsService;

  @override
  Future<Response<Map<String, dynamic>>> getNews({
    required String apiKey,
    String? query,
  }) {
    final Uri $url = Uri.parse('/everything');
    final Map<String, dynamic> $params = <String, dynamic>{
      'apiKey': apiKey,
      'q': query,
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
