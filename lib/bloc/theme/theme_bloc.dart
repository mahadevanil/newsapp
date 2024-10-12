import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../utils/enums.dart';

part 'theme_event.dart';
part 'theme_state.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  ThemeBloc() : super(const ThemeState()) {
    on<SetLightThemeEvent>((event, emit) {
      emit(state.copyWith(
        themeType: ThemeType.light,
      ));
    });
    on<SetDarkThemeEvent>((event, emit) {
      emit(state.copyWith(
        themeType: ThemeType.dark,
      ));
    });
  }
}
