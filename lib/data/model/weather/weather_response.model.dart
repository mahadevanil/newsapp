import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'weather_response.model.freezed.dart';
part 'weather_response.model.g.dart';

// Helper methods for encoding/decoding
WeatherResponseModel weatherResponseModelFromJson(String str) =>
    WeatherResponseModel.fromJson(json.decode(str));

String weatherResponseModelToJson(WeatherResponseModel data) =>
    json.encode(data.toJson());

@freezed
class WeatherResponseModel with _$WeatherResponseModel {
  const factory WeatherResponseModel({
    Location? location,
    Current? current,
  }) = _WeatherResponseModel;

  factory WeatherResponseModel.fromJson(Map<String, dynamic> json) =>
      _$WeatherResponseModelFromJson(json);
}

@freezed
class Location with _$Location {
  const factory Location({
    String? name,
    String? region,
    String? country,
    double? lat,
    double? lon,
    @JsonKey(name: 'tz_id') String? timezoneId,
    @JsonKey(name: 'localtime_epoch') int? localtimeEpoch,
    String? localtime,
  }) = _Location;

  factory Location.fromJson(Map<String, dynamic> json) =>
      _$LocationFromJson(json);
}

@freezed
class Current with _$Current {
  const factory Current({
    @JsonKey(name: 'last_updated_epoch') int? lastUpdatedEpoch,
    @JsonKey(name: 'last_updated') String? lastUpdated,
    @JsonKey(name: 'temp_c') double? tempC,
    @JsonKey(name: 'temp_f') double? tempF,
    @JsonKey(name: 'is_day') int? isDay,
    Condition? condition,
    @JsonKey(name: 'wind_mph') double? windMph,
    @JsonKey(name: 'wind_kph') double? windKph,
    @JsonKey(name: 'wind_degree') int? windDegree,
    @JsonKey(name: 'wind_dir') String? windDir,
    @JsonKey(name: 'pressure_mb') double? pressureMb,
    @JsonKey(name: 'pressure_in') double? pressureIn,
    @JsonKey(name: 'precip_mm') double? precipMm,
    @JsonKey(name: 'precip_in') double? precipIn,
    int? humidity,
    int? cloud,
    @JsonKey(name: 'feelslike_c') double? feelslikeC,
    @JsonKey(name: 'feelslike_f') double? feelslikeF,
    @JsonKey(name: 'windchill_c') double? windchillC,
    @JsonKey(name: 'windchill_f') double? windchillF,
    @JsonKey(name: 'heatindex_c') double? heatindexC,
    @JsonKey(name: 'heatindex_f') double? heatindexF,
    @JsonKey(name: 'dewpoint_c') double? dewpointC,
    @JsonKey(name: 'dewpoint_f') double? dewpointF,
    @JsonKey(name: 'vis_km') double? visKm,
    @JsonKey(name: 'vis_miles') double? visMiles,
    double? uv,
    @JsonKey(name: 'gust_mph') double? gustMph,
    @JsonKey(name: 'gust_kph') double? gustKph,
  }) = _Current;

  factory Current.fromJson(Map<String, dynamic> json) =>
      _$CurrentFromJson(json);
}

@freezed
class Condition with _$Condition {
  const factory Condition({
    String? text,
    String? icon,
    int? code,
  }) = _Condition;

  factory Condition.fromJson(Map<String, dynamic> json) =>
      _$ConditionFromJson(json);
}
