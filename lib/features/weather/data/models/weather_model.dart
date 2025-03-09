import 'dart:convert';

class WeatherModel {
  final String location;
  final double temperature;

  final String region;
  final String localtime;
  final String country;
  final List<Forecast> forecast;

  WeatherModel(
      {required this.location,
      required this.country,
      required this.localtime,
      required this.temperature,
      required this.forecast,
      required this.region});

  factory WeatherModel.fromJson(Map<String, dynamic> json) {
    var forecastList = json['forecast']['forecastday'] as List;
    List<Forecast> forecast =
        forecastList.map((i) => Forecast.fromJson(i)).toList();

    return WeatherModel(
        location: json['location']['name'],
        temperature: json['current']['temp_c'],
        forecast: forecast,
        region: json['location']['region'],
        localtime: json['location']['localtime'],
        country: json['location']['country']);
  }
}

class Forecast {
  final String date;
  final String condetion;
  final String icon;
  final String avgTempC;
  final String TempC;
  final String avgTempF;
  final String avgHum;
  final String totalprecip;
  final int cOS;
  final int cOR;
  int preduction;

  Forecast(
      {required this.icon,
      required this.condetion,
      required this.date,
      required this.avgTempC,
      required this.TempC,
      required this.avgTempF,
      required this.avgHum,
      required this.cOS,
      required this.totalprecip,
      required this.preduction,
      required this.cOR});

  factory Forecast.fromJson(Map<String, dynamic> json) {
    return Forecast(
        date: json['date'],
        avgTempC: json['day']['avgtemp_c'].toString(),
        TempC: json['day']['maxtemp_c'].toString(),
        totalprecip: json['day']["totalprecip_mm"].toString(),
        avgTempF: json['day']['avgtemp_f'].toString(),
        cOR: json['day']["daily_chance_of_rain"],
        cOS: json['day']["daily_will_it_snow"],
        avgHum: json['day']['avghumidity'].toString(),
        condetion: json['day']["condition"]["text"],
        icon: json['day']["condition"]["icon"],
        preduction: 0);
  }
}

// class Ai {
//   final String maxtempC;
//   final String totalprecipMm;
//   final String avghumidity;
//   final String avgTempC;
//   final String avgTempF;
//   final String dailyWillItRain;


//   Ai(
//       {  required double maxtempC,



//     required double totalprecipMm,



//     required int avghumidity,
//     required int dailyWillItRain,});

//   factory Ai.fromJson(Map<String, dynamic> json) {
//     return Ai(
//       date: json['date'],
//       avgTempC: json['day']['avgtemp_c'].toString(),
//       avgTempF: json['day']['avgtemp_f'].toString(),
//       cOR: json['day']["daily_chance_of_rain"],
//       cOS: json['day']["daily_will_it_snow"],
//       avgHum: json['day']['avghumidity'].toString(),
//       condetion: json['day']["condition"]["text"],
//       icon: json['day']["condition"]["icon"],
//     );
//   }
// }