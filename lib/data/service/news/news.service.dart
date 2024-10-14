import "dart:async";
import 'package:chopper/chopper.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../base.service.dart';

// Import your base service

// This is necessary for the generator to work.
part 'news.service.chopper.dart';

@ChopperApi(baseUrl: "/everything")
abstract class NewsService extends ChopperService {
  static NewsService create() =>
      _$NewsService(ChopperBaseService.newsApiClient);

  @Get()
  Future<Response<Map<String, dynamic>>?> getNews({
    @Query('apiKey') required String apiKey,
    @Query('q') String? query,
  });
}
