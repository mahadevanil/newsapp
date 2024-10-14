// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bottom_nav_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BottomNavState {
  String get greetingMessage => throw _privateConstructorUsedError;
  String get currentWeather => throw _privateConstructorUsedError;
  String get currentCelsius => throw _privateConstructorUsedError;
  String get cityName => throw _privateConstructorUsedError;
  LoadingStatus get loadingStatus => throw _privateConstructorUsedError;
  int get selectedIndex => throw _privateConstructorUsedError;

  /// Create a copy of BottomNavState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BottomNavStateCopyWith<BottomNavState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BottomNavStateCopyWith<$Res> {
  factory $BottomNavStateCopyWith(
          BottomNavState value, $Res Function(BottomNavState) then) =
      _$BottomNavStateCopyWithImpl<$Res, BottomNavState>;
  @useResult
  $Res call(
      {String greetingMessage,
      String currentWeather,
      String currentCelsius,
      String cityName,
      LoadingStatus loadingStatus,
      int selectedIndex});
}

/// @nodoc
class _$BottomNavStateCopyWithImpl<$Res, $Val extends BottomNavState>
    implements $BottomNavStateCopyWith<$Res> {
  _$BottomNavStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BottomNavState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? greetingMessage = null,
    Object? currentWeather = null,
    Object? currentCelsius = null,
    Object? cityName = null,
    Object? loadingStatus = null,
    Object? selectedIndex = null,
  }) {
    return _then(_value.copyWith(
      greetingMessage: null == greetingMessage
          ? _value.greetingMessage
          : greetingMessage // ignore: cast_nullable_to_non_nullable
              as String,
      currentWeather: null == currentWeather
          ? _value.currentWeather
          : currentWeather // ignore: cast_nullable_to_non_nullable
              as String,
      currentCelsius: null == currentCelsius
          ? _value.currentCelsius
          : currentCelsius // ignore: cast_nullable_to_non_nullable
              as String,
      cityName: null == cityName
          ? _value.cityName
          : cityName // ignore: cast_nullable_to_non_nullable
              as String,
      loadingStatus: null == loadingStatus
          ? _value.loadingStatus
          : loadingStatus // ignore: cast_nullable_to_non_nullable
              as LoadingStatus,
      selectedIndex: null == selectedIndex
          ? _value.selectedIndex
          : selectedIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BottomNavStateImplCopyWith<$Res>
    implements $BottomNavStateCopyWith<$Res> {
  factory _$$BottomNavStateImplCopyWith(_$BottomNavStateImpl value,
          $Res Function(_$BottomNavStateImpl) then) =
      __$$BottomNavStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String greetingMessage,
      String currentWeather,
      String currentCelsius,
      String cityName,
      LoadingStatus loadingStatus,
      int selectedIndex});
}

/// @nodoc
class __$$BottomNavStateImplCopyWithImpl<$Res>
    extends _$BottomNavStateCopyWithImpl<$Res, _$BottomNavStateImpl>
    implements _$$BottomNavStateImplCopyWith<$Res> {
  __$$BottomNavStateImplCopyWithImpl(
      _$BottomNavStateImpl _value, $Res Function(_$BottomNavStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of BottomNavState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? greetingMessage = null,
    Object? currentWeather = null,
    Object? currentCelsius = null,
    Object? cityName = null,
    Object? loadingStatus = null,
    Object? selectedIndex = null,
  }) {
    return _then(_$BottomNavStateImpl(
      greetingMessage: null == greetingMessage
          ? _value.greetingMessage
          : greetingMessage // ignore: cast_nullable_to_non_nullable
              as String,
      currentWeather: null == currentWeather
          ? _value.currentWeather
          : currentWeather // ignore: cast_nullable_to_non_nullable
              as String,
      currentCelsius: null == currentCelsius
          ? _value.currentCelsius
          : currentCelsius // ignore: cast_nullable_to_non_nullable
              as String,
      cityName: null == cityName
          ? _value.cityName
          : cityName // ignore: cast_nullable_to_non_nullable
              as String,
      loadingStatus: null == loadingStatus
          ? _value.loadingStatus
          : loadingStatus // ignore: cast_nullable_to_non_nullable
              as LoadingStatus,
      selectedIndex: null == selectedIndex
          ? _value.selectedIndex
          : selectedIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$BottomNavStateImpl implements _BottomNavState {
  const _$BottomNavStateImpl(
      {this.greetingMessage = '',
      this.currentWeather = '',
      this.currentCelsius = '',
      this.cityName = '',
      this.loadingStatus = LoadingStatus.initial,
      this.selectedIndex = 0});

  @override
  @JsonKey()
  final String greetingMessage;
  @override
  @JsonKey()
  final String currentWeather;
  @override
  @JsonKey()
  final String currentCelsius;
  @override
  @JsonKey()
  final String cityName;
  @override
  @JsonKey()
  final LoadingStatus loadingStatus;
  @override
  @JsonKey()
  final int selectedIndex;

  @override
  String toString() {
    return 'BottomNavState(greetingMessage: $greetingMessage, currentWeather: $currentWeather, currentCelsius: $currentCelsius, cityName: $cityName, loadingStatus: $loadingStatus, selectedIndex: $selectedIndex)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BottomNavStateImpl &&
            (identical(other.greetingMessage, greetingMessage) ||
                other.greetingMessage == greetingMessage) &&
            (identical(other.currentWeather, currentWeather) ||
                other.currentWeather == currentWeather) &&
            (identical(other.currentCelsius, currentCelsius) ||
                other.currentCelsius == currentCelsius) &&
            (identical(other.cityName, cityName) ||
                other.cityName == cityName) &&
            (identical(other.loadingStatus, loadingStatus) ||
                other.loadingStatus == loadingStatus) &&
            (identical(other.selectedIndex, selectedIndex) ||
                other.selectedIndex == selectedIndex));
  }

  @override
  int get hashCode => Object.hash(runtimeType, greetingMessage, currentWeather,
      currentCelsius, cityName, loadingStatus, selectedIndex);

  /// Create a copy of BottomNavState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BottomNavStateImplCopyWith<_$BottomNavStateImpl> get copyWith =>
      __$$BottomNavStateImplCopyWithImpl<_$BottomNavStateImpl>(
          this, _$identity);
}

abstract class _BottomNavState implements BottomNavState {
  const factory _BottomNavState(
      {final String greetingMessage,
      final String currentWeather,
      final String currentCelsius,
      final String cityName,
      final LoadingStatus loadingStatus,
      final int selectedIndex}) = _$BottomNavStateImpl;

  @override
  String get greetingMessage;
  @override
  String get currentWeather;
  @override
  String get currentCelsius;
  @override
  String get cityName;
  @override
  LoadingStatus get loadingStatus;
  @override
  int get selectedIndex;

  /// Create a copy of BottomNavState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BottomNavStateImplCopyWith<_$BottomNavStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
