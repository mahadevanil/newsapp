import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geolocator/geolocator.dart';
import 'package:news_app/config/config.dart';
import 'package:news_app/utils/logger.extension.dart';

import '../../constants/string.constants.dart';
import '../../data/service/location/location.service.dart';
import '../../main.dart';
import '../../utils/enums.dart';

part 'location_state.dart';
part 'location_cubit.freezed.dart';

class LocationCubit extends Cubit<LocationState> with RepoHandler {
  LocationCubit() : super(const LocationState());

  Future<void> init() async {
    emit(const LocationState(
      finishLoadingStatus: LoadingStatus.initial,
    ));
  }

  Future<void> onFinishTap({required String location}) async {
    fCon.storeData(
      type: PreferenceType.string,
      key: StringConst.cityName,
      value: location,
    );
    emit(
      state.copyWith(
        finishLoadingStatus: LoadingStatus.success,
      ),
    );
  }

  Future<void> onChanged(String value) async {
    emit(state.copyWith(cityName: value));
  }

  Future<void> getLocation() async {
    emit(state.copyWith(loadingStatus: LoadingStatus.loading));
    try {
      Position position = await fCon.determinePosition();

      final response = await provider.getCityName(
        position.latitude,
        position.longitude,
        'en',
        Config.locationKey,
      );

      if (response?.isSuccessful ?? false) {
        final cityName = response?.body['city'] ?? 'Unknown City';

        emit(state.copyWith(cityName: cityName));

        emit(state.copyWith(loadingStatus: LoadingStatus.success));
      } else {
        emit(state.copyWith(loadingStatus: LoadingStatus.failure));
        throw Exception('Failed to fetch city name');
      }
    } catch (e) {
      emit(state.copyWith(loadingStatus: LoadingStatus.failure));
      e.logFailure();
    }
  }
}

mixin RepoHandler {
  final LocationService provider = autoInjector.get<LocationService>();
}
