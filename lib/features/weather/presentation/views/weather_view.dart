import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/features/weather/presentation/views/widgets/weather_view_body.dart';
import '../cubit/weather_cubit.dart';

class WeatherView extends StatefulWidget {
  @override
  _WeatherScreenState createState() => _WeatherScreenState();
}

class _WeatherScreenState extends State<WeatherView> {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return WeatherViewBody();
    //  Scaffold(
    //   appBar: AppBar(title: Text('Weather Forecast')),
    //   body: Padding(
    //     padding: const EdgeInsets.all(16.0),
    //     child: Column(
    //       children: [
    //         TextField(
    //           controller: _controller,
    //           decoration: InputDecoration(
    //             labelText: 'Enter Location',
    //             border: OutlineInputBorder(),
    //           ),
    //         ),
    //         SizedBox(height: 10),
    //         ElevatedButton(
    //           onPressed: () {
    //             final location = _controller.text;
    //             if (location.isNotEmpty) {
    //               context.read<WeatherCubit>().fetchWeather(location);
    //             }
    //           },
    //           child: Text('Get Weather'),
    //         ),
    //         SizedBox(height: 20),
    //         Expanded(
    //           child: BlocBuilder<WeatherCubit, WeatherState>(
    //             builder: (context, state) {
    //               if (state is WeatherLoading) {
    //                 return Center(child: CircularProgressIndicator());
    //               } else if (state is WeatherLoaded) {
    //                 return Column(
    //                   children: [
    //                     Text('Location: ${state.weather.location}'),
    //                     Text('Temperature: ${state.weather.temperature}°C'),
    //                     Expanded(
    //                       child: ListView.builder(
    //                         itemCount: state.weather.forecast.length,
    //                         itemBuilder: (context, index) {
    //                           final forecast = state.weather.forecast[index];
    //                           return ListTile(
    //                             title: Text(forecast.date),
    //                             subtitle: Text(
    //                                 'Max: ${forecast.maxTemp}°C, Min: ${forecast.minTemp}°C'),
    //                           );
    //                         },
    //                       ),
    //                     ),
    //                   ],
    //                 );
    //               } else if (state is WeatherError) {
    //                 return Center(child: Text(state.message));
    //               } else {
    //                 return Center(child: Text('Enter a location'));
    //               }
    //             },
    //           ),
    //         ),
    //       ],
    //     ),
    //   ),
    // );
  }
}
