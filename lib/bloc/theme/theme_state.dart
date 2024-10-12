part of 'theme_bloc.dart';

final class ThemeState extends Equatable {
  const ThemeState({
    this.themeType,
    this.loadingStatus,
  });
  final ThemeType? themeType;
  final LoadingStatus? loadingStatus;
  ThemeState copyWith({
    ThemeType? themeType,
    LoadingStatus? loadingStatus,
  }) {
    return ThemeState(
      themeType: themeType ?? this.themeType,
      loadingStatus: loadingStatus ?? this.loadingStatus,
    );
  }

  @override
  List<Object> get props => [
        themeType ?? ThemeType.light,
        loadingStatus ?? LoadingStatus.initial,
      ];
}
