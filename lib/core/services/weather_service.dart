import 'dart:developer';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:weather_app/features/weather/data/models/weather_model.dart';

class WeatherService {
  final String apiKey = 'cfd9f1338ef742b0abc90805252402';
  final String baseUrl = 'https://api.weatherapi.com/v1/forecast.json';

  Future<WeatherModel> fetchWeather(String location) async {
    final response =
        await http.get(Uri.parse('$baseUrl?key=$apiKey&q=$location&days=3'));

    if (response.statusCode == 200) {
      WeatherModel weatherModel =
          WeatherModel.fromJson(json.decode(response.body));

      for (var day in weatherModel.forecast) {
        List<int> features = interpretWeather(
          avghumidity: int.parse(day.avgHum),
          dailyWillItRain: day.cOR,
          maxtempC: double.parse(day.TempC),
          totalprecipMm: double.parse(day.totalprecip),
        );

        int prediction = await getPrediction(features);

        day.preduction = prediction;
        log(prediction.toString(), name: 'hwa da');
      }

      log(weatherModel.forecast.toString(),
          name: 'Weather Model with Predictions');
      return weatherModel;
    } else {
      throw Exception('Failed to load weather data');
    }
  }

  List<int> interpretWeather({
    required double maxtempC,
    required double totalprecipMm,
    required int avghumidity,
    required int dailyWillItRain,
  }) {
    int outlookRainy = dailyWillItRain;
    int outlookSunny = (dailyWillItRain == 0 && totalprecipMm == 0) ? 1 : 0;
    int temperatureHot = (maxtempC > 30) ? 1 : 0;
    int temperatureMild = (maxtempC >= 20 && maxtempC <= 30) ? 1 : 0;
    int humidityNormal = (avghumidity >= 30 && avghumidity <= 60) ? 1 : 0;

    return [
      outlookRainy,
      outlookSunny,
      temperatureHot,
      temperatureMild,
      humidityNormal,
    ];
  }

  Future<int> getPrediction(List<int> features) async {
    try {
      final response = await http.post(
        Uri.parse('http://192.168.203.203:5001/predict'),
        headers: {'Content-Type': 'application/json'},
        body: json.encode({'features': features}),
      );

      if (response.statusCode == 200) {
        final decodedBody = json.decode(response.body);

        if (decodedBody != null && decodedBody['prediction'] != null) {
          final prediction = decodedBody['prediction'];

          if (prediction is List) {
            return prediction.first as int;
          } else if (prediction is int) {
            return prediction; //
          }
        }
      }

      log('Error: Invalid prediction format', name: 'API Error');
    } catch (e) {
      log('Exception: $e', name: 'API Exception');
    }

    return -1;
  }
}
