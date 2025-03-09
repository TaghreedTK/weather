import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/core/services/custom_bloc_observer.dart';
import 'package:weather_app/core/services/get_it_service.dart';
import 'package:weather_app/core/services/shared_preferences_singleton.dart';
import 'package:weather_app/core/services/weather_service.dart';
import 'package:weather_app/features/auth/presentation/views/on_board.dart';
import 'package:weather_app/features/weather/domain/repo/weather_repo.dart';
import 'package:weather_app/features/weather/domain/usecases/get_waether.dart';

import 'package:weather_app/features/weather/presentation/cubit/weather_cubit.dart';
import 'package:weather_app/features/home/presentation/home.dart';
import 'package:weather_app/firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  Bloc.observer = CustomBlocObserver();
  await Firebase.initializeApp();
  await Prefs.init();

  setupGetit();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final weatherService = WeatherService();
    final weatherRepository = WeatherRepository(weatherService);
    final getWeather = GetWeather(weatherRepository);

    return BlocProvider(
      create: (context) => WeatherCubit(getWeather),
      child: MaterialApp(home: HomeView()),
    );
  }
}
