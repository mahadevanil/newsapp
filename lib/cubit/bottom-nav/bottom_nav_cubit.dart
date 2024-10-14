import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:news_app/utils/logger.extension.dart';

import '../../config/config.dart';
import '../../constants/string.constants.dart';
import '../../data/model/weather/weather_response.model.dart';
import '../../data/service/weather/weather.service.dart';
import '../../main.dart';
import '../../utils/enums.dart';

part 'bottom_nav_state.dart';
part 'bottom_nav_cubit.freezed.dart';

class BottomNavCubit extends Cubit<BottomNavState> with RepoHandler {
  BottomNavCubit() : super(const BottomNavState());
  Future<void> init() async {
    emit(const BottomNavState(
        selectedIndex: 0, loadingStatus: LoadingStatus.loading));
    fetchNameData();
    fetchWeatherData();
    emit(state.copyWith(loadingStatus: LoadingStatus.success));
  }

  Future<void> fetchNameData() async {
    try {
      String userName = await fCon.retrieveData(
        type: PreferenceType.string,
        key: StringConst.userName,
      );

      String greetingMessage = fCon.getGreetingMessage(userName);
      emit(
        state.copyWith(
          greetingMessage: greetingMessage,
        ),
      );
    } catch (e) {
      emit(state.copyWith(
        loadingStatus: LoadingStatus.failure,
      ));
    }
  }

  Future<void> onBottomNavChange({required int index}) async {
    emit(
      state.copyWith(
        selectedIndex: index,
      ),
    );
  }

  Future<void> fetchWeatherData() async {
    try {
      String cityName = await fCon.retrieveData(
        type: PreferenceType.string,
        key: StringConst.cityName,
      );

      final response = await provider.getCurrentWeather(
        Config.weatherKey,
        "Ernakulam",
        'no',
      );

      if (response?.isSuccessful ?? false) {
        WeatherResponseModel? weatherData = WeatherResponseModel.fromJson(
            (response?.body) as Map<String, dynamic>);

        final double tempCelsius = weatherData.current?.tempC ?? 0.0;

        final String condition = weatherData.current?.condition?.text ?? "";

        emit(
          state.copyWith(
              currentWeather: condition,
              cityName: cityName,
              currentCelsius: tempCelsius.toStringAsFixed(0)),
        );
      }
    } on Exception catch (e) {
      e.logError();
      emit(
        state.copyWith(
          loadingStatus: LoadingStatus.failure,
        ),
      );
    }
  }
}

mixin RepoHandler {
  final WeatherService provider = autoInjector.get<WeatherService>();
}
