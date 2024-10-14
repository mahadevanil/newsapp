part of 'home_cubit.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    @Default(LoadingStatus.initial) LoadingStatus loadingTopStoryStatus,
    NewsResponseModel? newsData,
  }) = _HomeState;
}
