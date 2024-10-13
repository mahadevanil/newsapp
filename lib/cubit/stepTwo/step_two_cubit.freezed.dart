// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'step_two_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$StepTwoState {
  List<CategoryModel> get categoryList => throw _privateConstructorUsedError;
  LoadingStatus get loadingStatus => throw _privateConstructorUsedError;

  /// Create a copy of StepTwoState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StepTwoStateCopyWith<StepTwoState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StepTwoStateCopyWith<$Res> {
  factory $StepTwoStateCopyWith(
          StepTwoState value, $Res Function(StepTwoState) then) =
      _$StepTwoStateCopyWithImpl<$Res, StepTwoState>;
  @useResult
  $Res call({List<CategoryModel> categoryList, LoadingStatus loadingStatus});
}

/// @nodoc
class _$StepTwoStateCopyWithImpl<$Res, $Val extends StepTwoState>
    implements $StepTwoStateCopyWith<$Res> {
  _$StepTwoStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StepTwoState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryList = null,
    Object? loadingStatus = null,
  }) {
    return _then(_value.copyWith(
      categoryList: null == categoryList
          ? _value.categoryList
          : categoryList // ignore: cast_nullable_to_non_nullable
              as List<CategoryModel>,
      loadingStatus: null == loadingStatus
          ? _value.loadingStatus
          : loadingStatus // ignore: cast_nullable_to_non_nullable
              as LoadingStatus,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StepTwoStateImplCopyWith<$Res>
    implements $StepTwoStateCopyWith<$Res> {
  factory _$$StepTwoStateImplCopyWith(
          _$StepTwoStateImpl value, $Res Function(_$StepTwoStateImpl) then) =
      __$$StepTwoStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<CategoryModel> categoryList, LoadingStatus loadingStatus});
}

/// @nodoc
class __$$StepTwoStateImplCopyWithImpl<$Res>
    extends _$StepTwoStateCopyWithImpl<$Res, _$StepTwoStateImpl>
    implements _$$StepTwoStateImplCopyWith<$Res> {
  __$$StepTwoStateImplCopyWithImpl(
      _$StepTwoStateImpl _value, $Res Function(_$StepTwoStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of StepTwoState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryList = null,
    Object? loadingStatus = null,
  }) {
    return _then(_$StepTwoStateImpl(
      categoryList: null == categoryList
          ? _value._categoryList
          : categoryList // ignore: cast_nullable_to_non_nullable
              as List<CategoryModel>,
      loadingStatus: null == loadingStatus
          ? _value.loadingStatus
          : loadingStatus // ignore: cast_nullable_to_non_nullable
              as LoadingStatus,
    ));
  }
}

/// @nodoc

class _$StepTwoStateImpl implements _StepTwoState {
  const _$StepTwoStateImpl(
      {final List<CategoryModel> categoryList = const [],
      this.loadingStatus = LoadingStatus.initial})
      : _categoryList = categoryList;

  final List<CategoryModel> _categoryList;
  @override
  @JsonKey()
  List<CategoryModel> get categoryList {
    if (_categoryList is EqualUnmodifiableListView) return _categoryList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categoryList);
  }

  @override
  @JsonKey()
  final LoadingStatus loadingStatus;

  @override
  String toString() {
    return 'StepTwoState(categoryList: $categoryList, loadingStatus: $loadingStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StepTwoStateImpl &&
            const DeepCollectionEquality()
                .equals(other._categoryList, _categoryList) &&
            (identical(other.loadingStatus, loadingStatus) ||
                other.loadingStatus == loadingStatus));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_categoryList), loadingStatus);

  /// Create a copy of StepTwoState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StepTwoStateImplCopyWith<_$StepTwoStateImpl> get copyWith =>
      __$$StepTwoStateImplCopyWithImpl<_$StepTwoStateImpl>(this, _$identity);
}

abstract class _StepTwoState implements StepTwoState {
  const factory _StepTwoState(
      {final List<CategoryModel> categoryList,
      final LoadingStatus loadingStatus}) = _$StepTwoStateImpl;

  @override
  List<CategoryModel> get categoryList;
  @override
  LoadingStatus get loadingStatus;

  /// Create a copy of StepTwoState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StepTwoStateImplCopyWith<_$StepTwoStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
