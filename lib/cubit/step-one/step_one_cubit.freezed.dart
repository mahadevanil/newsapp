// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'step_one_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$StepOneState {
  LoadingStatus get loadingStatus => throw _privateConstructorUsedError;

  /// Create a copy of StepOneState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StepOneStateCopyWith<StepOneState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StepOneStateCopyWith<$Res> {
  factory $StepOneStateCopyWith(
          StepOneState value, $Res Function(StepOneState) then) =
      _$StepOneStateCopyWithImpl<$Res, StepOneState>;
  @useResult
  $Res call({LoadingStatus loadingStatus});
}

/// @nodoc
class _$StepOneStateCopyWithImpl<$Res, $Val extends StepOneState>
    implements $StepOneStateCopyWith<$Res> {
  _$StepOneStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StepOneState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loadingStatus = null,
  }) {
    return _then(_value.copyWith(
      loadingStatus: null == loadingStatus
          ? _value.loadingStatus
          : loadingStatus // ignore: cast_nullable_to_non_nullable
              as LoadingStatus,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StepOneStateImplCopyWith<$Res>
    implements $StepOneStateCopyWith<$Res> {
  factory _$$StepOneStateImplCopyWith(
          _$StepOneStateImpl value, $Res Function(_$StepOneStateImpl) then) =
      __$$StepOneStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({LoadingStatus loadingStatus});
}

/// @nodoc
class __$$StepOneStateImplCopyWithImpl<$Res>
    extends _$StepOneStateCopyWithImpl<$Res, _$StepOneStateImpl>
    implements _$$StepOneStateImplCopyWith<$Res> {
  __$$StepOneStateImplCopyWithImpl(
      _$StepOneStateImpl _value, $Res Function(_$StepOneStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of StepOneState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loadingStatus = null,
  }) {
    return _then(_$StepOneStateImpl(
      loadingStatus: null == loadingStatus
          ? _value.loadingStatus
          : loadingStatus // ignore: cast_nullable_to_non_nullable
              as LoadingStatus,
    ));
  }
}

/// @nodoc

class _$StepOneStateImpl implements _StepOneState {
  const _$StepOneStateImpl({this.loadingStatus = LoadingStatus.initial});

  @override
  @JsonKey()
  final LoadingStatus loadingStatus;

  @override
  String toString() {
    return 'StepOneState(loadingStatus: $loadingStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StepOneStateImpl &&
            (identical(other.loadingStatus, loadingStatus) ||
                other.loadingStatus == loadingStatus));
  }

  @override
  int get hashCode => Object.hash(runtimeType, loadingStatus);

  /// Create a copy of StepOneState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StepOneStateImplCopyWith<_$StepOneStateImpl> get copyWith =>
      __$$StepOneStateImplCopyWithImpl<_$StepOneStateImpl>(this, _$identity);
}

abstract class _StepOneState implements StepOneState {
  const factory _StepOneState({final LoadingStatus loadingStatus}) =
      _$StepOneStateImpl;

  @override
  LoadingStatus get loadingStatus;

  /// Create a copy of StepOneState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StepOneStateImplCopyWith<_$StepOneStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
