import 'package:weather_app/features/weather/domain/repo/weather_repo.dart';

import '../../data/models/weather_model.dart';

class GetWeather {
  final WeatherRepository repository;

  GetWeather(this.repository);

  Future<WeatherModel> execute(String location) {
    return repository.fetchWeather(location);
  }
}
