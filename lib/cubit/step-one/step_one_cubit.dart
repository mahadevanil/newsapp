import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:news_app/config/config.dart';
import 'package:news_app/utils/enums.dart';
import 'package:news_app/utils/logger.extension.dart';

import '../../constants/string.constants.dart';

part 'step_one_state.dart';
part 'step_one_cubit.freezed.dart';

class StepOneCubit extends Cubit<StepOneState> {
  StepOneCubit() : super(const StepOneState());
  Future<void> init() async {
    await fCon.deleteData();
    emit(const StepOneState(loadingStatus: LoadingStatus.initial));
  }

  Future<void> onEnterTap({required String name}) async {
    try {
      emit(state.copyWith(loadingStatus: LoadingStatus.loading));
      fCon.storeData(
          type: PreferenceType.string, key: StringConst.userName, value: name);

      emit(state.copyWith(loadingStatus: LoadingStatus.success));
    } on Exception catch (e) {
      e.logError();
      emit(state.copyWith(loadingStatus: LoadingStatus.failure));
    }
  }
}
