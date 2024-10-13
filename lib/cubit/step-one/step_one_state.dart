part of 'step_one_cubit.dart';

@freezed
class StepOneState with _$StepOneState {
  const factory StepOneState({
    @Default(LoadingStatus.initial) LoadingStatus loadingStatus,
  }) = _StepOneState;
}
