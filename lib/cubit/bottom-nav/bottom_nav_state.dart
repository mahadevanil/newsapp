part of 'bottom_nav_cubit.dart';

@freezed
class BottomNavState with _$BottomNavState {
  const factory BottomNavState({
    @Default('') String greetingMessage,
    @Default('') String currentWeather,
    @Default('') String currentCelsius,
    @Default('') String cityName,
    @Default(LoadingStatus.initial) LoadingStatus loadingStatus,
    @Default(0) int selectedIndex,
  }) = _BottomNavState;
}
