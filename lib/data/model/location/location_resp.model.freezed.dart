// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'location_resp.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LocationResponseModel _$LocationResponseModelFromJson(
    Map<String, dynamic> json) {
  return _LocationResponseModel.fromJson(json);
}

/// @nodoc
mixin _$LocationResponseModel {
  double? get latitude => throw _privateConstructorUsedError;
  double? get longitude => throw _privateConstructorUsedError;
  String? get localityLanguageRequested => throw _privateConstructorUsedError;
  String? get continent => throw _privateConstructorUsedError;
  String? get continentCode => throw _privateConstructorUsedError;
  String? get countryName => throw _privateConstructorUsedError;
  String? get countryCode => throw _privateConstructorUsedError;
  String? get principalSubdivision => throw _privateConstructorUsedError;
  String? get principalSubdivisionCode => throw _privateConstructorUsedError;
  String? get city => throw _privateConstructorUsedError;
  String? get locality => throw _privateConstructorUsedError;
  String? get postcode => throw _privateConstructorUsedError;
  String? get plusCode => throw _privateConstructorUsedError;
  LocalityInfo? get localityInfo => throw _privateConstructorUsedError;

  /// Serializes this LocationResponseModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LocationResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LocationResponseModelCopyWith<LocationResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationResponseModelCopyWith<$Res> {
  factory $LocationResponseModelCopyWith(LocationResponseModel value,
          $Res Function(LocationResponseModel) then) =
      _$LocationResponseModelCopyWithImpl<$Res, LocationResponseModel>;
  @useResult
  $Res call(
      {double? latitude,
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
      LocalityInfo? localityInfo});

  $LocalityInfoCopyWith<$Res>? get localityInfo;
}

/// @nodoc
class _$LocationResponseModelCopyWithImpl<$Res,
        $Val extends LocationResponseModel>
    implements $LocationResponseModelCopyWith<$Res> {
  _$LocationResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LocationResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? localityLanguageRequested = freezed,
    Object? continent = freezed,
    Object? continentCode = freezed,
    Object? countryName = freezed,
    Object? countryCode = freezed,
    Object? principalSubdivision = freezed,
    Object? principalSubdivisionCode = freezed,
    Object? city = freezed,
    Object? locality = freezed,
    Object? postcode = freezed,
    Object? plusCode = freezed,
    Object? localityInfo = freezed,
  }) {
    return _then(_value.copyWith(
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
      localityLanguageRequested: freezed == localityLanguageRequested
          ? _value.localityLanguageRequested
          : localityLanguageRequested // ignore: cast_nullable_to_non_nullable
              as String?,
      continent: freezed == continent
          ? _value.continent
          : continent // ignore: cast_nullable_to_non_nullable
              as String?,
      continentCode: freezed == continentCode
          ? _value.continentCode
          : continentCode // ignore: cast_nullable_to_non_nullable
              as String?,
      countryName: freezed == countryName
          ? _value.countryName
          : countryName // ignore: cast_nullable_to_non_nullable
              as String?,
      countryCode: freezed == countryCode
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String?,
      principalSubdivision: freezed == principalSubdivision
          ? _value.principalSubdivision
          : principalSubdivision // ignore: cast_nullable_to_non_nullable
              as String?,
      principalSubdivisionCode: freezed == principalSubdivisionCode
          ? _value.principalSubdivisionCode
          : principalSubdivisionCode // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      locality: freezed == locality
          ? _value.locality
          : locality // ignore: cast_nullable_to_non_nullable
              as String?,
      postcode: freezed == postcode
          ? _value.postcode
          : postcode // ignore: cast_nullable_to_non_nullable
              as String?,
      plusCode: freezed == plusCode
          ? _value.plusCode
          : plusCode // ignore: cast_nullable_to_non_nullable
              as String?,
      localityInfo: freezed == localityInfo
          ? _value.localityInfo
          : localityInfo // ignore: cast_nullable_to_non_nullable
              as LocalityInfo?,
    ) as $Val);
  }

  /// Create a copy of LocationResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LocalityInfoCopyWith<$Res>? get localityInfo {
    if (_value.localityInfo == null) {
      return null;
    }

    return $LocalityInfoCopyWith<$Res>(_value.localityInfo!, (value) {
      return _then(_value.copyWith(localityInfo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LocationResponseModelImplCopyWith<$Res>
    implements $LocationResponseModelCopyWith<$Res> {
  factory _$$LocationResponseModelImplCopyWith(
          _$LocationResponseModelImpl value,
          $Res Function(_$LocationResponseModelImpl) then) =
      __$$LocationResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double? latitude,
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
      LocalityInfo? localityInfo});

  @override
  $LocalityInfoCopyWith<$Res>? get localityInfo;
}

/// @nodoc
class __$$LocationResponseModelImplCopyWithImpl<$Res>
    extends _$LocationResponseModelCopyWithImpl<$Res,
        _$LocationResponseModelImpl>
    implements _$$LocationResponseModelImplCopyWith<$Res> {
  __$$LocationResponseModelImplCopyWithImpl(_$LocationResponseModelImpl _value,
      $Res Function(_$LocationResponseModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of LocationResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? localityLanguageRequested = freezed,
    Object? continent = freezed,
    Object? continentCode = freezed,
    Object? countryName = freezed,
    Object? countryCode = freezed,
    Object? principalSubdivision = freezed,
    Object? principalSubdivisionCode = freezed,
    Object? city = freezed,
    Object? locality = freezed,
    Object? postcode = freezed,
    Object? plusCode = freezed,
    Object? localityInfo = freezed,
  }) {
    return _then(_$LocationResponseModelImpl(
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
      localityLanguageRequested: freezed == localityLanguageRequested
          ? _value.localityLanguageRequested
          : localityLanguageRequested // ignore: cast_nullable_to_non_nullable
              as String?,
      continent: freezed == continent
          ? _value.continent
          : continent // ignore: cast_nullable_to_non_nullable
              as String?,
      continentCode: freezed == continentCode
          ? _value.continentCode
          : continentCode // ignore: cast_nullable_to_non_nullable
              as String?,
      countryName: freezed == countryName
          ? _value.countryName
          : countryName // ignore: cast_nullable_to_non_nullable
              as String?,
      countryCode: freezed == countryCode
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String?,
      principalSubdivision: freezed == principalSubdivision
          ? _value.principalSubdivision
          : principalSubdivision // ignore: cast_nullable_to_non_nullable
              as String?,
      principalSubdivisionCode: freezed == principalSubdivisionCode
          ? _value.principalSubdivisionCode
          : principalSubdivisionCode // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      locality: freezed == locality
          ? _value.locality
          : locality // ignore: cast_nullable_to_non_nullable
              as String?,
      postcode: freezed == postcode
          ? _value.postcode
          : postcode // ignore: cast_nullable_to_non_nullable
              as String?,
      plusCode: freezed == plusCode
          ? _value.plusCode
          : plusCode // ignore: cast_nullable_to_non_nullable
              as String?,
      localityInfo: freezed == localityInfo
          ? _value.localityInfo
          : localityInfo // ignore: cast_nullable_to_non_nullable
              as LocalityInfo?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LocationResponseModelImpl implements _LocationResponseModel {
  const _$LocationResponseModelImpl(
      {this.latitude,
      this.longitude,
      this.localityLanguageRequested,
      this.continent,
      this.continentCode,
      this.countryName,
      this.countryCode,
      this.principalSubdivision,
      this.principalSubdivisionCode,
      this.city,
      this.locality,
      this.postcode,
      this.plusCode,
      this.localityInfo});

  factory _$LocationResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$LocationResponseModelImplFromJson(json);

  @override
  final double? latitude;
  @override
  final double? longitude;
  @override
  final String? localityLanguageRequested;
  @override
  final String? continent;
  @override
  final String? continentCode;
  @override
  final String? countryName;
  @override
  final String? countryCode;
  @override
  final String? principalSubdivision;
  @override
  final String? principalSubdivisionCode;
  @override
  final String? city;
  @override
  final String? locality;
  @override
  final String? postcode;
  @override
  final String? plusCode;
  @override
  final LocalityInfo? localityInfo;

  @override
  String toString() {
    return 'LocationResponseModel(latitude: $latitude, longitude: $longitude, localityLanguageRequested: $localityLanguageRequested, continent: $continent, continentCode: $continentCode, countryName: $countryName, countryCode: $countryCode, principalSubdivision: $principalSubdivision, principalSubdivisionCode: $principalSubdivisionCode, city: $city, locality: $locality, postcode: $postcode, plusCode: $plusCode, localityInfo: $localityInfo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocationResponseModelImpl &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.localityLanguageRequested,
                    localityLanguageRequested) ||
                other.localityLanguageRequested == localityLanguageRequested) &&
            (identical(other.continent, continent) ||
                other.continent == continent) &&
            (identical(other.continentCode, continentCode) ||
                other.continentCode == continentCode) &&
            (identical(other.countryName, countryName) ||
                other.countryName == countryName) &&
            (identical(other.countryCode, countryCode) ||
                other.countryCode == countryCode) &&
            (identical(other.principalSubdivision, principalSubdivision) ||
                other.principalSubdivision == principalSubdivision) &&
            (identical(
                    other.principalSubdivisionCode, principalSubdivisionCode) ||
                other.principalSubdivisionCode == principalSubdivisionCode) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.locality, locality) ||
                other.locality == locality) &&
            (identical(other.postcode, postcode) ||
                other.postcode == postcode) &&
            (identical(other.plusCode, plusCode) ||
                other.plusCode == plusCode) &&
            (identical(other.localityInfo, localityInfo) ||
                other.localityInfo == localityInfo));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      latitude,
      longitude,
      localityLanguageRequested,
      continent,
      continentCode,
      countryName,
      countryCode,
      principalSubdivision,
      principalSubdivisionCode,
      city,
      locality,
      postcode,
      plusCode,
      localityInfo);

  /// Create a copy of LocationResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LocationResponseModelImplCopyWith<_$LocationResponseModelImpl>
      get copyWith => __$$LocationResponseModelImplCopyWithImpl<
          _$LocationResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LocationResponseModelImplToJson(
      this,
    );
  }
}

abstract class _LocationResponseModel implements LocationResponseModel {
  const factory _LocationResponseModel(
      {final double? latitude,
      final double? longitude,
      final String? localityLanguageRequested,
      final String? continent,
      final String? continentCode,
      final String? countryName,
      final String? countryCode,
      final String? principalSubdivision,
      final String? principalSubdivisionCode,
      final String? city,
      final String? locality,
      final String? postcode,
      final String? plusCode,
      final LocalityInfo? localityInfo}) = _$LocationResponseModelImpl;

  factory _LocationResponseModel.fromJson(Map<String, dynamic> json) =
      _$LocationResponseModelImpl.fromJson;

  @override
  double? get latitude;
  @override
  double? get longitude;
  @override
  String? get localityLanguageRequested;
  @override
  String? get continent;
  @override
  String? get continentCode;
  @override
  String? get countryName;
  @override
  String? get countryCode;
  @override
  String? get principalSubdivision;
  @override
  String? get principalSubdivisionCode;
  @override
  String? get city;
  @override
  String? get locality;
  @override
  String? get postcode;
  @override
  String? get plusCode;
  @override
  LocalityInfo? get localityInfo;

  /// Create a copy of LocationResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LocationResponseModelImplCopyWith<_$LocationResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

LocalityInfo _$LocalityInfoFromJson(Map<String, dynamic> json) {
  return _LocalityInfo.fromJson(json);
}

/// @nodoc
mixin _$LocalityInfo {
  List<Ative>? get administrative => throw _privateConstructorUsedError;
  List<Ative>? get informative => throw _privateConstructorUsedError;

  /// Serializes this LocalityInfo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LocalityInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LocalityInfoCopyWith<LocalityInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocalityInfoCopyWith<$Res> {
  factory $LocalityInfoCopyWith(
          LocalityInfo value, $Res Function(LocalityInfo) then) =
      _$LocalityInfoCopyWithImpl<$Res, LocalityInfo>;
  @useResult
  $Res call({List<Ative>? administrative, List<Ative>? informative});
}

/// @nodoc
class _$LocalityInfoCopyWithImpl<$Res, $Val extends LocalityInfo>
    implements $LocalityInfoCopyWith<$Res> {
  _$LocalityInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LocalityInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? administrative = freezed,
    Object? informative = freezed,
  }) {
    return _then(_value.copyWith(
      administrative: freezed == administrative
          ? _value.administrative
          : administrative // ignore: cast_nullable_to_non_nullable
              as List<Ative>?,
      informative: freezed == informative
          ? _value.informative
          : informative // ignore: cast_nullable_to_non_nullable
              as List<Ative>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LocalityInfoImplCopyWith<$Res>
    implements $LocalityInfoCopyWith<$Res> {
  factory _$$LocalityInfoImplCopyWith(
          _$LocalityInfoImpl value, $Res Function(_$LocalityInfoImpl) then) =
      __$$LocalityInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Ative>? administrative, List<Ative>? informative});
}

/// @nodoc
class __$$LocalityInfoImplCopyWithImpl<$Res>
    extends _$LocalityInfoCopyWithImpl<$Res, _$LocalityInfoImpl>
    implements _$$LocalityInfoImplCopyWith<$Res> {
  __$$LocalityInfoImplCopyWithImpl(
      _$LocalityInfoImpl _value, $Res Function(_$LocalityInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of LocalityInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? administrative = freezed,
    Object? informative = freezed,
  }) {
    return _then(_$LocalityInfoImpl(
      administrative: freezed == administrative
          ? _value._administrative
          : administrative // ignore: cast_nullable_to_non_nullable
              as List<Ative>?,
      informative: freezed == informative
          ? _value._informative
          : informative // ignore: cast_nullable_to_non_nullable
              as List<Ative>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LocalityInfoImpl implements _LocalityInfo {
  const _$LocalityInfoImpl(
      {final List<Ative>? administrative, final List<Ative>? informative})
      : _administrative = administrative,
        _informative = informative;

  factory _$LocalityInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$LocalityInfoImplFromJson(json);

  final List<Ative>? _administrative;
  @override
  List<Ative>? get administrative {
    final value = _administrative;
    if (value == null) return null;
    if (_administrative is EqualUnmodifiableListView) return _administrative;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Ative>? _informative;
  @override
  List<Ative>? get informative {
    final value = _informative;
    if (value == null) return null;
    if (_informative is EqualUnmodifiableListView) return _informative;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'LocalityInfo(administrative: $administrative, informative: $informative)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocalityInfoImpl &&
            const DeepCollectionEquality()
                .equals(other._administrative, _administrative) &&
            const DeepCollectionEquality()
                .equals(other._informative, _informative));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_administrative),
      const DeepCollectionEquality().hash(_informative));

  /// Create a copy of LocalityInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LocalityInfoImplCopyWith<_$LocalityInfoImpl> get copyWith =>
      __$$LocalityInfoImplCopyWithImpl<_$LocalityInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LocalityInfoImplToJson(
      this,
    );
  }
}

abstract class _LocalityInfo implements LocalityInfo {
  const factory _LocalityInfo(
      {final List<Ative>? administrative,
      final List<Ative>? informative}) = _$LocalityInfoImpl;

  factory _LocalityInfo.fromJson(Map<String, dynamic> json) =
      _$LocalityInfoImpl.fromJson;

  @override
  List<Ative>? get administrative;
  @override
  List<Ative>? get informative;

  /// Create a copy of LocalityInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LocalityInfoImplCopyWith<_$LocalityInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Ative _$AtiveFromJson(Map<String, dynamic> json) {
  return _Ative.fromJson(json);
}

/// @nodoc
mixin _$Ative {
  String? get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get isoName => throw _privateConstructorUsedError;
  int? get order => throw _privateConstructorUsedError;
  int? get adminLevel => throw _privateConstructorUsedError;
  String? get isoCode => throw _privateConstructorUsedError;
  String? get wikidataId => throw _privateConstructorUsedError;
  int? get geonameId => throw _privateConstructorUsedError;

  /// Serializes this Ative to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Ative
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AtiveCopyWith<Ative> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AtiveCopyWith<$Res> {
  factory $AtiveCopyWith(Ative value, $Res Function(Ative) then) =
      _$AtiveCopyWithImpl<$Res, Ative>;
  @useResult
  $Res call(
      {String? name,
      String? description,
      String? isoName,
      int? order,
      int? adminLevel,
      String? isoCode,
      String? wikidataId,
      int? geonameId});
}

/// @nodoc
class _$AtiveCopyWithImpl<$Res, $Val extends Ative>
    implements $AtiveCopyWith<$Res> {
  _$AtiveCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Ative
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? description = freezed,
    Object? isoName = freezed,
    Object? order = freezed,
    Object? adminLevel = freezed,
    Object? isoCode = freezed,
    Object? wikidataId = freezed,
    Object? geonameId = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      isoName: freezed == isoName
          ? _value.isoName
          : isoName // ignore: cast_nullable_to_non_nullable
              as String?,
      order: freezed == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int?,
      adminLevel: freezed == adminLevel
          ? _value.adminLevel
          : adminLevel // ignore: cast_nullable_to_non_nullable
              as int?,
      isoCode: freezed == isoCode
          ? _value.isoCode
          : isoCode // ignore: cast_nullable_to_non_nullable
              as String?,
      wikidataId: freezed == wikidataId
          ? _value.wikidataId
          : wikidataId // ignore: cast_nullable_to_non_nullable
              as String?,
      geonameId: freezed == geonameId
          ? _value.geonameId
          : geonameId // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AtiveImplCopyWith<$Res> implements $AtiveCopyWith<$Res> {
  factory _$$AtiveImplCopyWith(
          _$AtiveImpl value, $Res Function(_$AtiveImpl) then) =
      __$$AtiveImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? name,
      String? description,
      String? isoName,
      int? order,
      int? adminLevel,
      String? isoCode,
      String? wikidataId,
      int? geonameId});
}

/// @nodoc
class __$$AtiveImplCopyWithImpl<$Res>
    extends _$AtiveCopyWithImpl<$Res, _$AtiveImpl>
    implements _$$AtiveImplCopyWith<$Res> {
  __$$AtiveImplCopyWithImpl(
      _$AtiveImpl _value, $Res Function(_$AtiveImpl) _then)
      : super(_value, _then);

  /// Create a copy of Ative
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? description = freezed,
    Object? isoName = freezed,
    Object? order = freezed,
    Object? adminLevel = freezed,
    Object? isoCode = freezed,
    Object? wikidataId = freezed,
    Object? geonameId = freezed,
  }) {
    return _then(_$AtiveImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      isoName: freezed == isoName
          ? _value.isoName
          : isoName // ignore: cast_nullable_to_non_nullable
              as String?,
      order: freezed == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int?,
      adminLevel: freezed == adminLevel
          ? _value.adminLevel
          : adminLevel // ignore: cast_nullable_to_non_nullable
              as int?,
      isoCode: freezed == isoCode
          ? _value.isoCode
          : isoCode // ignore: cast_nullable_to_non_nullable
              as String?,
      wikidataId: freezed == wikidataId
          ? _value.wikidataId
          : wikidataId // ignore: cast_nullable_to_non_nullable
              as String?,
      geonameId: freezed == geonameId
          ? _value.geonameId
          : geonameId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AtiveImpl implements _Ative {
  const _$AtiveImpl(
      {this.name,
      this.description,
      this.isoName,
      this.order,
      this.adminLevel,
      this.isoCode,
      this.wikidataId,
      this.geonameId});

  factory _$AtiveImpl.fromJson(Map<String, dynamic> json) =>
      _$$AtiveImplFromJson(json);

  @override
  final String? name;
  @override
  final String? description;
  @override
  final String? isoName;
  @override
  final int? order;
  @override
  final int? adminLevel;
  @override
  final String? isoCode;
  @override
  final String? wikidataId;
  @override
  final int? geonameId;

  @override
  String toString() {
    return 'Ative(name: $name, description: $description, isoName: $isoName, order: $order, adminLevel: $adminLevel, isoCode: $isoCode, wikidataId: $wikidataId, geonameId: $geonameId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AtiveImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.isoName, isoName) || other.isoName == isoName) &&
            (identical(other.order, order) || other.order == order) &&
            (identical(other.adminLevel, adminLevel) ||
                other.adminLevel == adminLevel) &&
            (identical(other.isoCode, isoCode) || other.isoCode == isoCode) &&
            (identical(other.wikidataId, wikidataId) ||
                other.wikidataId == wikidataId) &&
            (identical(other.geonameId, geonameId) ||
                other.geonameId == geonameId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, description, isoName,
      order, adminLevel, isoCode, wikidataId, geonameId);

  /// Create a copy of Ative
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AtiveImplCopyWith<_$AtiveImpl> get copyWith =>
      __$$AtiveImplCopyWithImpl<_$AtiveImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AtiveImplToJson(
      this,
    );
  }
}

abstract class _Ative implements Ative {
  const factory _Ative(
      {final String? name,
      final String? description,
      final String? isoName,
      final int? order,
      final int? adminLevel,
      final String? isoCode,
      final String? wikidataId,
      final int? geonameId}) = _$AtiveImpl;

  factory _Ative.fromJson(Map<String, dynamic> json) = _$AtiveImpl.fromJson;

  @override
  String? get name;
  @override
  String? get description;
  @override
  String? get isoName;
  @override
  int? get order;
  @override
  int? get adminLevel;
  @override
  String? get isoCode;
  @override
  String? get wikidataId;
  @override
  int? get geonameId;

  /// Create a copy of Ative
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AtiveImplCopyWith<_$AtiveImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
