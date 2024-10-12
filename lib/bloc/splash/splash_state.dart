part of 'splash_bloc.dart';

final class SplashState extends Equatable {
  const SplashState({this.loadingStatus});
  final LoadingStatus? loadingStatus;
  SplashState copyWith({
    LoadingStatus? loadingStatus,
  }) {
    return SplashState(
      loadingStatus: loadingStatus ?? this.loadingStatus,
    );
  }

  @override
  List<Object> get props => [
        loadingStatus ?? LoadingStatus.initial,
      ];
}
