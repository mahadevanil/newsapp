part of 'splash_cubit.dart';

@freezed
class SplashState with _$SplashState {
  const factory SplashState({
    @Default(LoadingStatus.initial) LoadingStatus loadingStatus,
  }) = _SplashState;
}
