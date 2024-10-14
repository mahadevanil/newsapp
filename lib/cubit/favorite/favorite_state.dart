part of 'favorite_cubit.dart';

@freezed
class FavoriteState with _$FavoriteState {
  const factory FavoriteState({
    @Default(LoadingStatus.initial) LoadingStatus loadingStatus,
    NewsResponseModel? newsData,
  }) = _FavoriteState;
}
