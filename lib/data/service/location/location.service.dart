import "dart:async";
import 'package:chopper/chopper.dart';

import '../base.service.dart';

// Import your base service

// This is necessary for the generator to work.
part 'location.service.chopper.dart';

@ChopperApi(baseUrl: "/data/reverse-geocode")
abstract class LocationService extends ChopperService {
  static LocationService create() =>
      _$LocationService(ChopperBaseService.locationClient);

  @Get()
  Future<Response<dynamic>?> getCityName(
    @Query('latitude') double latitude,
    @Query('longitude') double longitude,
    @Query('localityLanguage') String language,
    @Query('key') String locationKey,
  );
}
