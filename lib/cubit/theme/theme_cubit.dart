import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../utils/enums.dart';

part 'theme_state.dart';
part 'theme_cubit.freezed.dart';

class ThemeCubit extends Cubit<ThemeState> {
  ThemeCubit() : super(const ThemeState());
  //set light theme
  Future<void> setLightTheme() async {
    emit(state.copyWith(
      themeType: ThemeType.light,
    ));
  }

  //set dark theme
  Future<void> setDarkTheme() async {
    emit(state.copyWith(
      themeType: ThemeType.dark,
    ));
  }
}
