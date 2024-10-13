part of 'step_two_cubit.dart';

@freezed
class StepTwoState with _$StepTwoState {
  const factory StepTwoState({
    @Default([]) List<CategoryModel> categoryList,
    @Default(LoadingStatus.initial) LoadingStatus loadingStatus,
  }) = _StepTwoState;
}
