part of 'location_cubit.dart';

@freezed
class LocationState with _$LocationState {
  const factory LocationState({
    @Default(LoadingStatus.initial) LoadingStatus loadingStatus,
    @Default(LoadingStatus.initial) LoadingStatus finishLoadingStatus,
    @Default("") String cityName,
  }) = _LocationState;
}
