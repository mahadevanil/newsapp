part of 'theme_cubit.dart';

@freezed
class ThemeState with _$ThemeState {
  const factory ThemeState({
    @Default(ThemeType.light) ThemeType? themeType,
    @Default(LoadingStatus.initial) LoadingStatus loadingStatus,
  }) = _ThemeState;
}
