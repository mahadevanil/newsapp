// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location_resp.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LocationResponseModelImpl _$$LocationResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$LocationResponseModelImpl(
      latitude: (json['latitude'] as num?)?.toDouble(),
      longitude: (json['longitude'] as num?)?.toDouble(),
      localityLanguageRequested: json['localityLanguageRequested'] as String?,
      continent: json['continent'] as String?,
      continentCode: json['continentCode'] as String?,
      countryName: json['countryName'] as String?,
      countryCode: json['countryCode'] as String?,
      principalSubdivision: json['principalSubdivision'] as String?,
      principalSubdivisionCode: json['principalSubdivisionCode'] as String?,
      city: json['city'] as String?,
      locality: json['locality'] as String?,
      postcode: json['postcode'] as String?,
      plusCode: json['plusCode'] as String?,
      localityInfo: json['localityInfo'] == null
          ? null
          : LocalityInfo.fromJson(json['localityInfo'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$LocationResponseModelImplToJson(
        _$LocationResponseModelImpl instance) =>
    <String, dynamic>{
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'localityLanguageRequested': instance.localityLanguageRequested,
      'continent': instance.continent,
      'continentCode': instance.continentCode,
      'countryName': instance.countryName,
      'countryCode': instance.countryCode,
      'principalSubdivision': instance.principalSubdivision,
      'principalSubdivisionCode': instance.principalSubdivisionCode,
      'city': instance.city,
      'locality': instance.locality,
      'postcode': instance.postcode,
      'plusCode': instance.plusCode,
      'localityInfo': instance.localityInfo,
    };

_$LocalityInfoImpl _$$LocalityInfoImplFromJson(Map<String, dynamic> json) =>
    _$LocalityInfoImpl(
      administrative: (json['administrative'] as List<dynamic>?)
          ?.map((e) => Ative.fromJson(e as Map<String, dynamic>))
          .toList(),
      informative: (json['informative'] as List<dynamic>?)
          ?.map((e) => Ative.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$LocalityInfoImplToJson(_$LocalityInfoImpl instance) =>
    <String, dynamic>{
      'administrative': instance.administrative,
      'informative': instance.informative,
    };

_$AtiveImpl _$$AtiveImplFromJson(Map<String, dynamic> json) => _$AtiveImpl(
      name: json['name'] as String?,
      description: json['description'] as String?,
      isoName: json['isoName'] as String?,
      order: (json['order'] as num?)?.toInt(),
      adminLevel: (json['adminLevel'] as num?)?.toInt(),
      isoCode: json['isoCode'] as String?,
      wikidataId: json['wikidataId'] as String?,
      geonameId: (json['geonameId'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$AtiveImplToJson(_$AtiveImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'isoName': instance.isoName,
      'order': instance.order,
      'adminLevel': instance.adminLevel,
      'isoCode': instance.isoCode,
      'wikidataId': instance.wikidataId,
      'geonameId': instance.geonameId,
    };
