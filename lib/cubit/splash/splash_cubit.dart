import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../utils/enums.dart';

part 'splash_state.dart';
part 'splash_cubit.freezed.dart';

class SplashCubit extends Cubit<SplashState> {
  SplashCubit() : super(const SplashState());

  Future<void> init() async {
    await Future.delayed(const Duration(seconds: 4));
    emit(const SplashState(
      loadingStatus: LoadingStatus.success,
    ));
  }
}
