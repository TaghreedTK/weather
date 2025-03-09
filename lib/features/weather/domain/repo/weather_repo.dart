import 'package:weather_app/core/services/weather_service.dart';

import '../../data/models/weather_model.dart';

class WeatherRepository {
  final WeatherService weatherService;

  WeatherRepository(this.weatherService);

  Future<WeatherModel> fetchWeather(String location) {
    return weatherService.fetchWeather(location);
  }
}
