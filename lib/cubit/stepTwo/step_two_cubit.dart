import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';
import 'package:news_app/utils/logger.extension.dart';
import '../../config/config.dart';
import '../../constants/string.constants.dart';
import '../../data/model/category.model.dart';
import '../../data/repository/category/category.repo.dart';
import 'package:news_app/main.dart';

import '../../utils/enums.dart';
part 'step_two_state.dart';
part 'step_two_cubit.freezed.dart';

class StepTwoCubit extends Cubit<StepTwoState> with RepoHandler {
  StepTwoCubit() : super(const StepTwoState());
  Future<void> init() async {
    emit(const StepTwoState(loadingStatus: LoadingStatus.initial));
    try {
      List<CategoryModel> categoryList = await categoryRepo.getCategoryList();
      emit(state.copyWith(categoryList: categoryList));
    } catch (e) {
      e.logError();
    }
  }

  Future<void> onCategoryTap({required int index}) async {
    List<CategoryModel> data = List.from(state.categoryList);
    data[index] = data[index].copyWith(isSelected: !data[index].isSelected);
    emit(state.copyWith(categoryList: data));
  }

  Future<void> onEnterTap() async {
    try {
      emit(state.copyWith(loadingStatus: LoadingStatus.loading));
      List<String> jsonList = state.categoryList
          .map((category) => jsonEncode(category.text))
          .toList();

      fCon.storeData(
        type: PreferenceType.list,
        key: StringConst.selectedCategories,
        value: jsonList,
      );
      emit(state.copyWith(loadingStatus: LoadingStatus.success));
    } on Exception catch (e) {
      e.logFailure();
      emit(state.copyWith(loadingStatus: LoadingStatus.failure));
    }
  }
}

mixin RepoHandler {
  final CategoryListRepo categoryRepo = autoInjector.get<CategoryListRepo>();
}
