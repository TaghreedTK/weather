import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:weather_app/features/weather/domain/usecases/get_waether.dart';

import '../../data/models/weather_model.dart';

part 'weather_state.dart';

class WeatherCubit extends Cubit<WeatherState> {
  final GetWeather getWeather;

  WeatherCubit(this.getWeather) : super(WeatherInitial());

  Future<void> fetchWeather(String location) async {
    try {
      emit(WeatherLoading());
      final weather = await getWeather.execute(location);
      emit(WeatherLoaded(weather));
    } catch (e) {
      emit(WeatherError('Failed to fetch weather data'));
    }
  }

  WeatherModel? get weather {
    if (state is WeatherLoaded) {
      return (state as WeatherLoaded).weather;
    }
    return null;
  }
}
