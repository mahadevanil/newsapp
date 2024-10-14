// To parse this JSON data, do
//
//     final locationResponseModel = locationResponseModelFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'location_resp.model.freezed.dart';
part 'location_resp.model.g.dart';

LocationResponseModel locationResponseModelFromJson(String str) =>
    LocationResponseModel.fromJson(json.decode(str));

String locationResponseModelToJson(LocationResponseModel data) =>
    json.encode(data.toJson());

@freezed
class LocationResponseModel with _$LocationResponseModel {
  const factory LocationResponseModel({
    double? latitude,
    double? longitude,
    String? localityLanguageRequested,
    String? continent,
    String? continentCode,
    String? countryName,
    String? countryCode,
    String? principalSubdivision,
    String? principalSubdivisionCode,
    String? city,
    String? locality,
    String? postcode,
    String? plusCode,
    LocalityInfo? localityInfo,
  }) = _LocationResponseModel;

  factory LocationResponseModel.fromJson(Map<String, dynamic> json) =>
      _$LocationResponseModelFromJson(json);
}

@freezed
class LocalityInfo with _$LocalityInfo {
  const factory LocalityInfo({
    List<Ative>? administrative,
    List<Ative>? informative,
  }) = _LocalityInfo;

  factory LocalityInfo.fromJson(Map<String, dynamic> json) =>
      _$LocalityInfoFromJson(json);
}

@freezed
class Ative with _$Ative {
  const factory Ative({
    String? name,
    String? description,
    String? isoName,
    int? order,
    int? adminLevel,
    String? isoCode,
    String? wikidataId,
    int? geonameId,
  }) = _Ative;

  factory Ative.fromJson(Map<String, dynamic> json) => _$AtiveFromJson(json);
}
